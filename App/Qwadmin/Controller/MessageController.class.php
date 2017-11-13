<?php
/**
 *
 * 版权所有：恰维网络<qwadmin.qiawei.com>
 * 作    者：寒川<hanchuan@qiawei.com>
 * 日    期：2016-09-20
 * 版    本：1.0.0
 * 功能说明：文章控制器。
 *
 **/

namespace Qwadmin\Controller;

use Vendor\Tree;

class MessageController extends ComController
{

    public function index($sid = 0, $p = 1)
    {


        $p = intval($p) > 0 ? $p : 1;

        $message = M('message');
        $pagesize = 10;#每页数量
        $offset = $pagesize * ($p - 1);//计算记录偏移量
        $prefix = C('DB_PREFIX');


        $count = $message->count();
        $list = $message->field("{$prefix}message.*")->order('t desc')->limit($offset . ',' . $pagesize)->select();
        $page = new \Think\Page($count, $pagesize);
        $page = $page->show();
        $this->assign('list', $list);
        $this->assign('page', $page);
        $this->display();
    }

    public function del()
    {

        $aids = isset($_REQUEST['aids']) ? $_REQUEST['aids'] : false;
        if ($aids) {
            if (is_array($aids)) {
                $aids = implode(',', $aids);
                $map['id'] = array('in', $aids);
            } else {
                $map = 'id=' . $aids;
            }
            if (M('message')->where($map)->delete()) {
                //addlog('删除文章，AID：' . $aids);
                $this->success('恭喜，删除成功！',U('index'));
            } else {
                $this->error('参数错误！');
            }
        } else {
            $this->error('参数错误！');
        }

    }

    public function edit($id)
    {

        $id = intval($id);
        $message = M('message')->where('id=' . $id)->find();
        if ($message) {

            $category = M('category')->field('id,pid,name')->where(['pid'=>0])->order('o asc')->select();
           /* $tree = new Tree($category);
            $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
            $category = $tree->get_tree(0, $str, $message['sid']);*/
            $this->assign('category', $category);//导航

            $this->assign('message', $message);
        } else {
            $this->error('参数错误！');
        }
        $this->display('form');
    }

    public function update($id = 0,$act = null)
    {

        $id = intval($id);
        $data['sid'] = isset($_POST['sid']) ? intval($_POST['sid']) : 0;
        $data['is_position'] = isset($_POST['is_position']) ? $_POST['is_position'] : false;
        $data['o'] = isset($_POST['o']) ? trim($_POST['o']) : false;
        /*  $data['seotitle'] = isset($_POST['seotitle']) ? $_POST['seotitle'] : '';
        $data['keywords'] = I('post.keywords', '', 'strip_tags');
        $data['description'] = I('post.description', '', 'strip_tags');
       */
        $data['image_path'] = I('post.image_path', '', 'strip_tags');
        $data['t'] = time();
       /* if (!$data['sid'] or !$data['title'] or !$data['content']) {
            $this->error('警告！文章分类、文章标题及文章内容为必填项目。');
        }*/
        if (empty($data['image_path'])) {
            $this->error('图片未上传');
        }

        if ($id) {
            M('message')->data($data)->where('id=' . $id)->save();
           /* addlog('编辑文章，AID：' . $id);*/
            $this->success('恭喜！编辑成功！',U('index'));
        } else {
            $id = M('message')->data($data)->add();
            if ($id) {
                /*addlog('新增文章，AID：' . $aid);*/
                $this->success('恭喜！新增成功！',U('index'));
            } else {
                $this->error('抱歉，新增失败！');
            }

        }
    }
}
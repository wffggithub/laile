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

class BannerController extends ComController
{

    public function add()
    {

        $category = M('category')->field('id,pid,name')->where(['pid'=>0])->order('o asc')->select();

       /* $tree = new Tree($category);
        $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
        $category = $tree->get_tree(0, $str, 0);*/
        $this->assign('category', $category);//导航
        $this->display('form');
    }

    public function index($sid = 0, $p = 1)
    {


        $p = intval($p) > 0 ? $p : 1;

        $banner = M('banner');
        $pagesize = 10;#每页数量
        $offset = $pagesize * ($p - 1);//计算记录偏移量
        $prefix = C('DB_PREFIX');
        $sid = isset($_GET['sid']) ? $_GET['sid'] : '';
        $keyword = isset($_GET['keyword']) ? htmlentities($_GET['keyword']) : '';
        $order = isset($_GET['order']) ? $_GET['order'] : 'DESC';
        $where = '1 = 1 ';
        if ($sid) {
            $sids_array = category_get_sons($sid);
            $sids = implode(',',$sids_array);
            $where .= "and {$prefix}banner.sid in ($sids) ";
        }
        if ($keyword) {
            $where .= "and {$prefix}banner.title like '%{$keyword}%' ";
        }
        //默认按照时间降序
        $orderby = "t desc";
        if ($order == "asc") {

            $orderby = "t asc";
        }
        //获取栏目分类
        $category = M('category')->field('id,pid,name')->where(['pid'=>0])->order('o asc')->select();

        /*$tree = new Tree($category);
        $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
        $category = $tree->get_tree(0, $str, $sid);*/
        $this->assign('category', $category);//导航


        $count = $banner->where($where)->count();
        $list = $banner->field("{$prefix}banner.*,{$prefix}category.name")->where($where)->order($orderby)->join("{$prefix}category ON {$prefix}category.id = {$prefix}banner.sid")->limit($offset . ',' . $pagesize)->select();
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
            if (M('banner')->where($map)->delete()) {
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
        $banner = M('banner')->where('id=' . $id)->find();
        if ($banner) {

            $category = M('category')->field('id,pid,name')->where(['pid'=>0])->order('o asc')->select();
           /* $tree = new Tree($category);
            $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
            $category = $tree->get_tree(0, $str, $banner['sid']);*/
            $this->assign('category', $category);//导航

            $this->assign('banner', $banner);
        } else {
            $this->error('参数错误！');
        }
        $this->display('form');
    }

    public function update($id = 0,$act = null)
    {

        if ($act == 'order') {
            $id = I('post.id', 0, 'intval');
            if (!$id) {
                die('0');
            }
            $o = I('post.o', 0, 'intval');
            M('banner')->data(array('o' => $o))->where("id='{$id}'")->save();
            die('1');
        }

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
            M('banner')->data($data)->where('id=' . $id)->save();
           /* addlog('编辑文章，AID：' . $id);*/
            $this->success('恭喜！编辑成功！',U('index'));
        } else {
            $id = M('banner')->data($data)->add();
            if ($id) {
                /*addlog('新增文章，AID：' . $aid);*/
                $this->success('恭喜！新增成功！',U('index'));
            } else {
                $this->error('抱歉，新增失败！');
            }

        }
    }
}
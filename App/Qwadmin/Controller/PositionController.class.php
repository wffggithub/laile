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

class PositionController extends ComController
{

    public function add()
    {
        $this->display('form');
    }

    public function index($sid = 0, $p = 1)
    {


        $p = intval($p) > 0 ? $p : 1;

        $position = M('position');
        $pagesize = 20;#每页数量
        $offset = $pagesize * ($p - 1);//计算记录偏移量
        $prefix = C('DB_PREFIX');
        $sid = isset($_GET['sid']) ? $_GET['sid'] : '';
        $keyword = isset($_GET['keyword']) ? htmlentities($_GET['keyword']) : '';
        $order = isset($_GET['order']) ? $_GET['order'] : 'DESC';
        $where = '1 = 1 ';
        if ($sid) {
            $sids_array = category_get_sons($sid);
            $sids = implode(',',$sids_array);
            $where .= "and {$prefix}position.sid in ($sids) ";
        }
        if ($keyword) {
            $where .= "and {$prefix}position.title like '%{$keyword}%' ";
        }
        //默认按照时间降序
        $orderby = "o asc";
        if ($order == "desc") {

            $orderby = "o desc";
        }


        $count = $position->where($where)->count();
        $list = $position->field("{$prefix}position.*")->where($where)->order($orderby)->limit($offset . ',' . $pagesize)->select();
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
            if (M('position')->where($map)->delete()) {
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
        $position = M('position')->where('id=' . $id)->find();
        if ($position) {

            $cate_id = M('category')->where(['dir'=>CONTROLLER_NAME,'pid'=>0])->getField('id'); //获取产品中心导航id
            if (!$category = M('category')->field('id,pid,name')->where(['pid'=>$cate_id])->order('o asc')->select()){
                $category = M('category')->field('id,pid,name')->where(['id'=>$cate_id])->order('o asc')->select();
            };
           /* $tree = new Tree($category);
            $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
            $category = $tree->get_tree(0, $str, $position['sid']);*/
            $this->assign('category', $category);//导航

            $this->assign('position', $position);
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
            M('position')->data(array('o' => $o))->where("id='{$id}'")->save();
            die('1');
        }

        $id = intval($id);
        $data['position'] = isset($_POST['position']) ? $_POST['position'] : false;
        $data['detail'] = I('post.detail', '', 'strip_tags');
        $data['o'] = isset($_POST['o']) ? trim($_POST['o']) : false;
        $data['seotitle'] = isset($_POST['seotitle']) ? $_POST['seotitle'] : '';
        $data['keywords'] = I('post.keywords', '', 'strip_tags');
        $data['description'] = I('post.description', '', 'strip_tags');
        $data['t'] = time();

        if ($id) {
            M('position')->data($data)->where('id=' . $id)->save();
           /* addlog('编辑文章，AID：' . $id);*/
            $this->success('恭喜！编辑成功！',U('index'));
        } else {
            $id = M('position')->data($data)->add();
            if ($id) {
                /*addlog('新增文章，AID：' . $aid);*/
                $this->success('恭喜！新增成功！',U('index'));
            } else {
                $this->error('抱歉，新增失败！');
            }

        }
    }
}
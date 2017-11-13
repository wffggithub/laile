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

class ProductTypeController extends ComController
{

    public function add()
    {

        $cate_id = M('category')->where(['dir'=>'Product','pid'=>0])->getField('id'); //获取产品中心导航id
        $category = M('category')->field('id,pid,name')->where(['pid'=>$cate_id])->order('o asc')->select();
      /*  $tree = new Tree($category);
        $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
        $category = $tree->get_tree(0, $str, 0);*/
        $this->assign('category', $category);//导航
        $this->display('form');
    }

    public function index($sid = 0, $p = 1)
    {


        $p = intval($p) > 0 ? $p : 1;

        $productType = M('product_type');
        $pagesize = 10;#每页数量
        $offset = $pagesize * ($p - 1);//计算记录偏移量
        $prefix = C('DB_PREFIX');
        $sid = isset($_GET['sid']) ? $_GET['sid'] : '';
        $this->assign('sid',$sid);
        $keyword = isset($_GET['keyword']) ? htmlentities($_GET['keyword']) : '';
        $order = isset($_GET['order']) ? $_GET['order'] : 'DESC';
        $where = '1 = 1 ';
        if ($sid) {
            $sids_array = category_get_sons($sid);
            $sids = implode(',',$sids_array);
            $where .= "and {$prefix}product_type.sid in ($sids) ";
        }
        if ($keyword) {
            $where .= "and {$prefix}product_type.title like '%{$keyword}%' ";
        }
        //默认按照时间降序
        $orderby = "t desc";
        if ($order == "asc") {

            $orderby = "t asc";
        }
        //获取栏目分类
        $cate_id = M('category')->where(['dir'=>'Product','pid'=>0])->getField('id'); //获取产品中心导航id
        $category = M('category')->field('id,pid,name')->where(['pid'=>$cate_id])->order('o asc')->select();
       /* $tree = new Tree($category);
        $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
        $category = $tree->get_tree(0, $str, $sid);*/
        $this->assign('category', $category);//导航


        $count = $productType->where($where)->count();
        $list = $productType->field("{$prefix}product_type.*,{$prefix}category.name cate")->where($where)->order($orderby)->join("{$prefix}category ON {$prefix}category.id = {$prefix}product_type.sid")->limit($offset . ',' . $pagesize)->select();
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
            if (M('product_type')->where($map)->delete()) {
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
        $productType = M('product_type')->where('id=' . $id)->find();
        if ($productType) {

            $cate_id = M('category')->where(['dir'=>'Product','pid'=>0])->getField('id'); //获取产品中心导航id
            $category = M('category')->field('id,pid,name')->where(['pid'=>$cate_id])->order('o asc')->select();
           /* $tree = new Tree($category);
            $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
            $category = $tree->get_tree(0, $str, $productType['sid']);*/
            $this->assign('category', $category);//导航

            $this->assign('productType', $productType);
        } else {
            $this->error('参数错误！');
        }
        $this->display('form');
    }

    public function update($id = 0)
    {

        $id = intval($id);
        $data['sid'] = isset($_POST['sid']) ? intval($_POST['sid']) : 0;
        $data['is_home'] = isset($_POST['is_home']) ? $_POST['is_home'] : false;
        $data['name'] = I('post.name', '', 'strip_tags');
        $data['description'] = I('post.description', '', 'strip_tags');
        $data['image_path_home'] = isset($_POST['image_path_home']) ? $_POST['image_path_home'] : false;
        $data['image_path'] = I('post.image_path', '', 'strip_tags');
        $data['t'] = time();
       /* if (!$data['sid'] or !$data['title'] or !$data['content']) {
            $this->error('警告！文章分类、文章标题及文章内容为必填项目。');
        }*/
        if (empty($data['image_path']) && empty($data['image_path_home'])) {
            $this->error('图片未上传');
        }

        if ($id) {
            M('product_type')->data($data)->where('id=' . $id)->save();
           /* addlog('编辑文章，AID：' . $id);*/
            $this->success('恭喜！编辑成功！',U('index'));
        } else {
            $id = M('product_type')->data($data)->add();
            if ($id) {
                /*addlog('新增文章，AID：' . $aid);*/
                $this->success('恭喜！新增成功！',U('index'));
            } else {
                $this->error('抱歉，新增失败！');
            }

        }
    }
}
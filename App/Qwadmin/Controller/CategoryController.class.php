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

class CategoryController extends ComController
{

    public function index()
    {


        $category = M('category')->field(true)->order('o asc')->select();
        $category = $this->getMenu($category, $id = 'id', $pid = 'pid', $son = 'children',$type = 2);
        $this->assign('category', $category);
        $this->display();
    }

    public function del()
    {

        $id = isset($_GET['id']) ? intval($_GET['id']) : false;
        if ($id) {
            $data['id'] = $id;
            $category = M('category');
            if ($category->where('pid=' . $id)->count()) {
                die('2');//存在子类，严禁删除。
            } else {
                $category->where('id=' . $id)->delete();
                addlog('删除分类，ID：' . $id);
            }
            die('1');
        } else {
            die('0');
        }

    }

    public function edit()
    {

        $id = isset($_GET['id']) ? intval($_GET['id']) : false;
        $currentcategory = M('category')->where('id=' . $id)->find();
        $this->assign('currentcategory', $currentcategory);

        $category = M('category')->field('id,pid,name')->where("id <> {$id}")->order('o asc')->select();
        $tree = new Tree($category);
        $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
        $category = $tree->get_tree(0, $str, $currentcategory['pid']);

        $this->assign('category', $category);
        $this->display('form');
    }

    public function add()
    {

        $pid = isset($_GET['pid']) ? intval($_GET['pid']) : 0;
        $category = M('category')->field('id,pid,name')->order('o asc')->select();
        $tree = new Tree($category);
        $str = "<option value=\$id \$selected>\$spacer\$name</option>"; //生成的形式
        $category = $tree->get_tree(0, $str, $pid);

        $this->assign('category', $category);
        $this->display('form');
    }

    public function update($act = null)
    {
        if ($act == 'order') {
            $id = I('post.id', 0, 'intval');
            if (!$id) {
                die('0');
            }
            $o = I('post.o', 0, 'intval');
            M('category')->data(array('o' => $o))->where("id='{$id}'")->save();
            addlog('分类修改排序，ID：' . $id);
            die('1');
        }

        $id = I('post.id', false, 'intval');
        $data['type'] = I('post.type', 0, 'intval');
        $data['pid'] = I('post.pid', 0, 'intval');
        $data['name'] = I('post.name');
        $data['dir'] = I('post.dir','',array('strip_tags','trim'));
        $data['seotitle'] = I('post.seotitle', '', 'htmlspecialchars');
        $data['keywords'] = I('post.keywords', '', 'htmlspecialchars');
        $data['description'] = I('post.description', '', 'htmlspecialchars');
        $data['content'] = I('post.content');
        $data['url'] = I('post.url');
        $data['image_path'] = I('post.image_path');
        $data['link'] = trim(I('post.link'));
        $data['cattemplate'] = I('post.cattemplate');
        $data['contemplate'] = I('post.contemplate');
        $data['o'] = I('post.o', 0, 'intval');
        $data['position'] = isset($_POST['position']) ? $_POST['position'] : false;
        if ($data['name'] == '') {
            $this->error('名称不能为空！');
        }
        if ($id) {
            if (M('category')->data($data)->where('id=' . $id)->save()) {
                addlog('修改，ID：' . $id . '，名称：' . $data['name']);
                $this->success('恭喜，修改成功！',U('index'));
                die(0);
            }
        } else {
            $id = M('category')->data($data)->add();
            if ($id) {
                addlog('新增分类，ID：' . $id . '，名称：' . $data['name']);
                $this->success('恭喜，新增成功！', 'index');
                die(0);
            }
        }
        $this->success('恭喜，操作成功！','index');
    }
}

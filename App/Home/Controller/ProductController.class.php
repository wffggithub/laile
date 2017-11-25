<?php
namespace Home\Controller;

use Think\Controller;

class ProductController extends ComController
{
    /**
     * 产品中心
     */
    public function index()
    {
        $Pcate = M('category')->field('id,name')->where(['pid'=>0,'dir'=>CONTROLLER_NAME])->find();
        //banner图
        $banner = M('banner')->where(['sid'=>$Pcate['id']])->find();
        $this->assign('banner',$banner);

        $all = M('category')->field('id,name')->where(['pid'=>$Pcate['id']])->select();
        $sid = I('id',0,'intval') == 0 ? $all[0]['id'] : I('id',0,'intval');
        $this->assign('sid',$sid);
        $info = M('product')->where(['sid'=>$sid])->find();
        $this->assign('name',$Pcate['name']);
        $this->assign('all',$all);
        $this->assign('info',$info);
        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();

    }

    /**
     * 产品列表
     */
    public function productList()
    {
        $type_id = I('type_id','0','intval');
        $data = M('product')->where(['type_id'=>$type_id])->order('t desc')->select();
        $this->assign('data',$data);
        $this->display();

    }


}
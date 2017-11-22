<?php
namespace Mobile\Controller;

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

        $all = M('category')->field('c.id,c.name,s.m_image_path')->alias('c')->where(['pid'=>$Pcate['id']])
            ->join('left join __PRODUCT__ s ON s.sid=c.id')
            ->select();
        $sid = I('id',0,'intval') == 0 ? $all[0]['id'] : I('id',0,'intval');
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
    public function detail()
    {
        $sid = I('id',0,'intval');
        $info = M('product')->where(['sid'=>$sid])->find();
        $name = M('category')->where(['id'=>$info['sid']])->getField('name');
        $this->assign('name',$name);
        $this->assign('info',$info);
        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();
    }


}
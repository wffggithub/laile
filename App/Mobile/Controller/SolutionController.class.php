<?php

namespace Mobile\Controller;

use Think\Controller;

class SolutionController extends ComController
{
    /**
     * 解决方案
     */
    public function index()
    {

        $Pcate = M('category')->field('id,name')->where(['pid'=>0,'dir'=>CONTROLLER_NAME])->find();
        //banner图
        $banner = M('banner')->where(['sid'=>$Pcate['id']])->find();
        $this->assign('banner',$banner);

        $all = M('category')->field('c.id,c.name,s.m_image_path')->alias('c')->where(['pid'=>$Pcate['id']])
            ->join('left join __SOLUTION__ s ON s.sid=c.id')
            ->select();
        $sid = I('id',0,'intval') == 0 ? $all[0]['id'] : I('id',0,'intval');
        $info = M('solution')->where(['sid'=>$sid])->find();
        $this->assign('name',$Pcate['name']);
        $this->assign('all',$all);
        $this->assign('info',$info);
        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();

    }

    public function detail()
    {

        $sid = I('id',0,'intval');
        $info = M('solution')->where(['sid'=>$sid])->find();
        $name = M('category')->where(['id'=>$info['sid']])->getField('name');
        $this->assign('name',$name);
        $this->assign('info',$info);
        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();

    }
}


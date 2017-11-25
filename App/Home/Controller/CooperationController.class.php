<?php

namespace Home\Controller;

use Think\Controller;

class CooperationController extends ComController
{
    public function index()
    {
        

        $Pcate = M('category')->where(['pid'=>0,'dir'=>CONTROLLER_NAME])->find();
        //banner图
        $banner = M('banner')->where(['sid'=>$Pcate['id']])->find();
        $this->assign('banner',$banner);

        $info = M('cooperation')->order('t desc')->find();
        $this->assign('info',$info);
        $this->assign('seotitle',$Pcate['seotitle']);
        $this->assign('keywords',$Pcate['keywords']);
        $this->assign('description',$Pcate['description']);
        $this->display();
    }
}
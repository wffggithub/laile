<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Home\Controller;
use OT\DataDictionary;

/**
 * 前台首页控制器
 * 主要获取首页聚合数据
 */
class AboutController extends ComController {

	//系统首页
    public function index()
    {
        $Pcate = M('category')->field('id,name')->where(['pid'=>0,'dir'=>CONTROLLER_NAME])->find();
        //banner图
        $banner = M('banner')->where(['sid'=>$Pcate['id']])->find();
        $this->assign('banner',$banner);

        $all = M('category')->field('id,name')->where(['pid'=>$Pcate['id']])->select();
        $sid = I('id',0,'intval') == 0 ? $all[0]['id'] : I('id',0,'intval');
        $info = M('about')->where(['sid'=>$sid])->find();
        $this->assign('name',$Pcate['name']);
        $this->assign('all',$all);
        $this->assign('info',$info);
        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();
    }

}
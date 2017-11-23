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
class IndexController extends ComController {

	//系统首页
    public function index()
    {

        //首页导航id
        $id = $this->home_channel_id;
        // TODO 获取轮播图
        $image = M('Introduce')->alias('i')->field('i.*,c.link')->join('__CATEGORY__ c ON c.id = i.sid')->select();
        $this->assign('image',empty($image) ? [] :  $image);
        $activity = M('activity')->order('t desc')->limit(5)->select();
        $this->assign('activity',$activity);

        $this->display();
    }

}
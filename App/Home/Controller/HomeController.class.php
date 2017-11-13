<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Home\Controller;
use Think\Controller;

/**
 * 前台公共控制器
 * 为防止多分组Controller名称冲突，公共Controller名称统一使用分组名称
 */
class HomeController extends Controller {

    public $home_channel_id = 0;

	/* 空操作，用于输出404页面 */
	public function _empty(){
		$this->redirect('Index/index');
	}


    protected function _initialize(){
        /* 读取站点配置 */
        $config = api('Config/lists');
        C($config); //添加配置

        if(!C('WEB_SITE_CLOSE')){
            $this->error('站点已经关闭，请稍后访问~');
        }

        //一级导航
        $channel = M('channel')->field('id,pid,title,url,create_time')->where(['pid'=>0])->order('sort asc')->select();
        //首页导航id
        $this->home_channel_id = $channel[0]['id'];
        //二级导航
        $channel_two = M('channel')->field('id,pid,title,url,create_time')->where(['pid'=>['not in','0']])->order('sort asc')->select();
        foreach ($channel as $k => &$v) {
            $v['child'] = [];
            foreach ($channel_two as $key => $val) {
                if ($v['id'] == $val['pid']) {
                    $v['child'][] = $val;
                }
            }
        }
        //dump($channel);die;

        $this->assign('channel', empty($channel) ? [] : $channel);

    }

	/* 用户登录检测 */
	protected function login(){
		/* 用户登录检测 */
		is_login() || $this->error('您还没有登录，请先登录！', U('User/login'));
	}

}

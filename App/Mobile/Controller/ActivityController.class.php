<?php
namespace Mobile\Controller;

use Think\Controller;

class ActivityController extends ComController
{
    /**
     * 门店展示
     */
    public function index()
    {

        $Pcate = M('category')->field('id,name')->where(['pid'=>0,'dir'=>CONTROLLER_NAME])->find();
        //banner图
        $banner = M('banner')->where(['sid'=>$Pcate['id']])->find();
        $this->assign('banner',$banner);


        $page = I('p',1,'intval');
        $num = 6;//每页显示的数量
        $count = M('activity')->count();
        $this->assign('count',$count);

        $info = M('activity')->field(true)->page("$page,$num")->order('t desc')->select();

        $this->assign('info',$info);
        $Page  = new \Think\Page($count,$num);// 实例化分页类 传入总记录数和每页显示的记录数
        $Page->setConfig('prev','上一页');
        $Page->setConfig('next','下一页');
        $Page->setConfig('header', '共 %TOTAL_ROW% 条');

        $show  = $Page->show();// 分页显示输出

        $this->assign('page',$show);// 赋值分页输出

        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();
    }

    public function detail()
    {
        $Pcate = M('category')->field('id,name')->where(['pid'=>0,'dir'=>CONTROLLER_NAME])->find();
        //banner图
        $banner = M('banner')->where(['sid'=>$Pcate['id']])->find();
        $this->assign('banner',$banner);
        $id = I('id',0);
        $info = M('activity')->field(true)->find($id);
        $this->assign('info',$info);
        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();
    }

}
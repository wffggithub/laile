<?php

namespace Home\Controller;

use Think\Controller;

class PositionController extends ComController
{
    /**
     * 招商加盟
     */
    public function index()
    {
        $id = I('id',0,'intval');
        $all = M('position')->field('id,position')->order('o asc')->select();
        if ($id){
            $position = M('position')->find($id);
        } else {
            $position = M('position')->order('o asc')->find();
        }
        $this->assign('id',$position['id']);
        $this->assign('all',$all);
        $this->assign('position',$position);
        $this->assign('seotitle',$position['seotitle']);
        $this->assign('keywords',$position['keywords']);
        $this->assign('description',$position['description']);
        $this->display();exit;
    }

}
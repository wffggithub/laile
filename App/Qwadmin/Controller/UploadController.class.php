<?php
/**
 *
 * 版权所有：恰维网络<qwadmin.qiawei.com>
 * 作    者：小马哥<hanchuan@qiawei.com>
 * 日    期：2015-09-17
 * 版    本：1.0.3
 * 功能说明：文件上传控制器。
 *
 **/

namespace Qwadmin\Controller;

use Think\Upload;

class UploadController extends ComController
{
    public function index($type = null)
    {

    }

    public function uploadpic()
    {
        $Img = I('Img');
        $Path = null;
        $controller = I('controller','');
        if ($_FILES['img']) {
            $Img = $this->saveimg($_FILES,$controller);
        }
        $BackCall = I('BackCall');
        $Width = I('Width');
        $Height = I('Height');
        if (!$BackCall) {
            $Width = $_POST['BackCall'];
        }
        if (!$Width) {
            $Width = $_POST['Width'];
        }
        if (!$Height) {
            $Width = $_POST['Height'];
        }
        $this->assign('controller', $controller);
        $this->assign('Width', $Width);
        $this->assign('BackCall', $BackCall);
        $this->assign('Img', $Img);
        $this->assign('Height', $Height);
        $this->display('Uploadpic');
    }

    private function saveimg($files,$controller = '')
    {
        $mimes = array(
            'image/jpeg',
            'image/jpg',
            'image/jpeg',
            'image/png',
            'image/pjpeg',
            'image/gif',
            'image/bmp',
            'image/x-png'
        );
        $exts = array(
            'jpeg',
            'jpg',
            'jpeg',
            'png',
            'pjpeg',
            'gif',
            'bmp',
            'x-png'
        );
        $upload = new Upload(array(
            'mimes' => $mimes,
            'exts' => $exts,
            'rootPath' => './Public/',
            'savePath' => 'attached/'.date('Y')."/".date('m')."/",
            'subName'  =>  array('date', 'd'),
        ));
        $info = $upload->upload($files);
        if(!$info) {// 上传错误提示错误信息
            $error = $upload->getError();
            echo "<script>alert('{$error}')</script>";
        }else{// 上传成功
            foreach ($info as $item) {
                $filePath[] = __ROOT__."/Public/".$item['savepath'].$item['savename'];
            }
            $ImgStr = implode("|", $filePath);

            //添加水印
            if ($controller !='Setting') {
                //获取水印图
                $water_picture = M('setting')->where(['type'=>2])->find();
                $water_position = M('setting')->where(['type'=>3])->find();
                if (!empty($water_picture['v'])) {
                    $image = new \Think\Image();
                    $water_position = $water_position['v'] == 0 ? \Think\Image::IMAGE_WATER_NORTHWEST : \Think\Image::IMAGE_WATER_NORTHEAST;
                    $image->open('.'.$ImgStr)->water('.'.$water_picture['v'],$water_position)->save('.'.$ImgStr);
                }
            }

            return $ImgStr;
        }
    }

    public function batchpic()
    {
        $ImgStr = I('Img');
        $ImgStr = trim($ImgStr, '|');
        $Img = array();
        if (strlen($ImgStr) > 1) {
            $Img = explode('|', $ImgStr);
        }
        $Path = null;
        $newImg = array();
        $newImgStr = null;
        if ($_FILES) {
            $newImgStr = $this->saveimg($_FILES);
            if ($newImgStr) {
                $newImg = explode('|', $newImgStr);
            }

        }
        $Img = array_merge($Img,$newImg);
        $ImgStr = implode("|", $Img);
        $BackCall = I('BackCall');
        $Width = I('u');
        $Height = I('Height');
        if (!$BackCall) {
            $Width = $_POST['BackCall'];
        }
        if (!$Width) {
            $Width = $_POST['Width'];
        }
        if (!$Height) {
            $Width = $_POST['Height'];
        }
        $this->assign('Width', $Width);
        $this->assign('BackCall', $BackCall);
        $this->assign('ImgStr', $ImgStr);
        $this->assign('Img', $Img);
        $this->assign('Height', $Height);
        $this->display('Batchpic');
    }
}

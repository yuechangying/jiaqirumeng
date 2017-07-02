<?php
//decode by 折翼天使资源社区 www.zheyitianshi.com
global $_W, $_GPC;
		$weid=$_W['uniacid'];
		$this->faxin();

		$status=$_GPC['status'];
		if(empty($status))
		{
			$status=0;
		}

		$member=pdo_fetchall("SELECT a.*,b.username,c.avatar,b.mobile FROM ".tablename('jy_ppp_tixianrecord')." as a left join ".tablename('jy_ppp_tuiguang')." as b on a.tgyid=b.id left join ".tablename('mc_members')." as c on a.uid=c.uid WHERE a.weid=".$weid." AND a.status=".$status." ORDER BY a.createtime desc ");

		$total=count($member);

		if(checksubmit('submit')) {

			$select=$_GPC['select'];

			ob_end_clean();

			require_once '../framework/library/phpexcel/PHPExcel.php';

			// Create new PHPExcel object
			$objPHPExcel = new PHPExcel();

			// Set document properties
			$objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
										 ->setLastModifiedBy("Maarten Balliauw")
										 ->setTitle("Office 2007 XLSX Test Document")
										 ->setSubject("Office 2007 XLSX Test Document")
										 ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
										 ->setKeywords("office 2007 openxml php")
										 ->setCategory("Test result file");


			// Add some data
			$objPHPExcel->setActiveSheetIndex(0)
						->setCellValue('A1', '商户流水号')
						->setCellValue('B1', '收款人账号')
						->setCellValue('C1', '收款人姓名')
						->setCellValue('D1', '付款金额(元)')
						->setCellValue('E1', '付款理由')
						->setCellValue('F1', '提现时间')
						->setCellValue('G1', '提现方式');
			$i=2;

			foreach ($select as $key => $value) {

				$row=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_tixianrecord')." WHERE weid=".$weid." AND id=".$value);


				$objPHPExcel->setActiveSheetIndex(0)
				->setCellValue('A'.$i, $row['id'])
				->setCellValue('B'.$i, $row['alipay'])
				->setCellValue('C'.$i, $row['realname'])
				->setCellValue('D'.$i, $row['fee'])
				->setCellValue('E'.$i, '分销佣金')
				->setCellValue('F'.$i, date('Y-m-d H:i',$row['createtime']))
				->setCellValue('G'.$i, '支付宝');


				$i++;
				pdo_update("jy_ppp_tixianrecord",array('status'=>2),array('id'=>$value));
			}

			$objPHPExcel->getActiveSheet()->getStyle('A1:G1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(42);
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(12);
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(20);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(14);
			$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(20);
			$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(20);

			// Rename worksheet
			$objPHPExcel->getActiveSheet()->setTitle('转账名录_'.date('Y-m-d'));


			// Set active sheet index to the first sheet, so Excel opens this as the first sheet
			$objPHPExcel->setActiveSheetIndex(0);


			// Redirect output to a client’s web browser (Excel2007)
			header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
			header('Content-Disposition: attachment;filename="'.'转账名录_'.date('Ymd').'.xlsx"');
			header('Cache-Control: max-age=0');

			$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
			$objWriter->save('php://output');

			ob_flush();
			flush();

			message("导出成功",$this->createWebUrl('tixian'),'success');
		}

		if(checksubmit('submit2')) {
			$select=$_GPC['select'];

			foreach ($select as $key => $value) {
				pdo_update("jy_ppp_tixianrecord",array('status'=>1),array('id'=>$value));
			}
			message("设置成功",$this->createWebUrl('tixian'),'success');
		}

		if(checksubmit('submit3')) {
			$select=$_GPC['select'];

			foreach ($select as $key => $value) {

				$row=pdo_fetch("SELECT a.tgyid,a.fee,b.credit FROM ".tablename('jy_ppp_tixianrecord')." as a left join ".tablename('jy_ppp_tuiguang')." as b on a.tgyid=b.id WHERE a.weid=".$weid." AND a.id=".$value);
				pdo_update("jy_ppp_tixianrecord",array('status'=>3),array('id'=>$value));
				pdo_update('jy_ppp_tuiguang',array('credit'=>$row['credit']+$row['fee']),array('id'=>$row['tgyid']));
			}
			message("设置成功",$this->createWebUrl('tixian'),'success');
		}

		if(checksubmit('submit4')) {
			$select=$_GPC['select'];

			foreach ($select as $key => $value) {

				$row=pdo_fetch("SELECT a.tgyid,a.fee,b.credit FROM ".tablename('jy_ppp_tixianrecord')." as a left join ".tablename('jy_ppp_tuiguang')." as b on a.tgyid=b.id WHERE a.weid=".$weid." AND a.id=".$value);
				pdo_update("jy_ppp_tixianrecord",array('status'=>4),array('id'=>$value));
				pdo_update('jy_ppp_tuiguang',array('credit'=>$row['credit']+$row['fee']),array('id'=>$row['tgyid']));
			}
			message("设置成功",$this->createWebUrl('tixian'),'success');
		}

		include $this->template('web/tixian');
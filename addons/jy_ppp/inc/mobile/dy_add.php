<?php
global $_W,$_GPC;

		if ( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') == false ) {
			$weixin=0;

			$weid=$_GPC['i'];

			$dyid=$_SESSION['dyid'];
			if(!empty($dyid))
			{
				$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_dianyuan')." WHERE weid=".$weid." AND id=".$dyid);
			}
		}
		else
		{
			$weixin=1;

			$weid=$_W['uniacid'];
			//checkAuth();
			$from_user=$_SESSION['jy_openid'];
			if(empty($from_user))
			{
				echo "<script>
					window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'dy_add'))."';
				</script>";
			}
			else
			{
				$member_temp=pdo_fetch("SELECT uid,nickname,follow FROM ".tablename('mc_mapping_fans')." WHERE openid='$from_user' AND uniacid=".$weid);
				if(empty($member_temp['nickname']) || $member_temp['uid']==0)
				{
					unset($uid);
				}
				else
				{
					$uid=$member_temp['uid'];
					unset($member_temp);
				}
				if(empty($uid))
				{
					echo "<script>
						window.location.href = '".$this->createMobileUrl('userinfo',array('op'=>'dy_add'))."';
					</script>";
				}
				else
				{
					$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_dianyuan')." WHERE weid=".$weid." AND from_user='".$from_user."' AND status=1");
					$dyid=$member['id'];
				}
			}
		}

		if(!empty($member))
		{

				$sitem=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_setting')." WHERE weid=".$weid);
				$op=$_GPC['op'];
				if($op=='add')
				{
					$mobile_temp=pdo_fetch("SELECT mobile FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND type=3 ORDER BY mobile DESC LIMIT 1 ");
					if(empty($mobile_temp))
					{
						$mobile=10000000001;
					}
					else
					{
						$mobile=$mobile_temp['mobile']+1;
					}
					$pwd=intval($_GPC['password']);
					if(empty($pwd))
					{
						$pwd='123456';
					}
					$sex=$_GPC['sex'];
					$member=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_member')." WHERE weid=".$weid." AND mobile='".$mobile."'");
					if(!empty($sex))
					{
						if(empty($member))
						{
							$nicheng=$_GPC['nicheng'];
							if(empty($nicheng))
							{
								// $nicheng_tou=array('快乐的','冷静的','醉熏的','潇洒的','糊涂的','积极的','冷酷的','深情的','粗暴的','温柔的','可爱的','愉快的','义气的','认真的','威武的','帅气的','传统的','潇洒的','漂亮的','自然的','专一的','听话的','昏睡的','狂野的','等待的','搞怪的','幽默的','魁梧的','活泼的','开心的','高兴的','超帅的','留胡子的','坦率的','直率的','轻松的','痴情的','完美的','精明的','无聊的','有魅力的','丰富的','繁荣的','饱满的','炙热的','暴躁的','碧蓝的','俊逸的','英勇的','健忘的','故意的','无心的','土豪的','朴实的','兴奋的','幸福的','淡定的','不安的','阔达的','孤独的','独特的','疯狂的','时尚的','落后的','风趣的','忧伤的','大胆的','爱笑的','矮小的','健康的','合适的','玩命的','沉默的','斯文的','香蕉','苹果','鲤鱼','鳗鱼','任性的','细心的','粗心的','大意的','甜甜的','酷酷的','健壮的','英俊的','霸气的','阳光的','默默的','大力的','孝顺的','忧虑的','着急的','紧张的','善良的','凶狠的','害怕的','重要的','危机的','欢喜的','欣慰的','满意的','跳跃的','诚心的','称心的','如意的','怡然的','娇气的','无奈的','无语的','激动的','愤怒的','美好的','感动的','激情的','激昂的','震动的','虚拟的','超级的','寒冷的','精明的','明理的','犹豫的','忧郁的','寂寞的','奋斗的','勤奋的','现代的','过时的','稳重的','热情的','含蓄的','开放的','无辜的','多情的','纯真的','拉长的','热心的','从容的','体贴的','风中的','曾经的','追寻的','儒雅的','优雅的','开朗的','外向的','内向的','清爽的','文艺的','长情的','平常的','单身的','伶俐的','高大的','懦弱的','柔弱的','爱笑的','乐观的','耍酷的','酷炫的','神勇的','年轻的','唠叨的','瘦瘦的','无情的','包容的','顺心的','畅快的','舒适的','靓丽的','负责的','背后的','简单的','谦让的','彩色的','缥缈的','欢呼的','生动的','复杂的','慈祥的','仁爱的','魔幻的','虚幻的','淡然的','受伤的','雪白的','高高的','糟糕的','顺利的','闪闪的','羞涩的','缓慢的','迅速的','优秀的','聪明的','含糊的','俏皮的','淡淡的','坚强的','平淡的','欣喜的','能干的','灵巧的','友好的','机智的','机灵的','正直的','谨慎的','俭朴的','殷勤的','虚心的','辛勤的','自觉的','无私的','无限的','踏实的','老实的','现实的','可靠的','务实的','拼搏的','个性的','粗犷的','活力的','成就的','勤劳的','单纯的','落寞的','朴素的','悲凉的','忧心的','洁净的','清秀的','自由的','小巧的','单薄的','贪玩的','刻苦的','干净的','壮观的','和谐的','文静的','调皮的','害羞的','安详的','自信的','端庄的','坚定的','美满的','舒心的','温暖的','专注的','勤恳的','美丽的','腼腆的','优美的','甜美的','甜蜜的','整齐的','动人的','典雅的','尊敬的','舒服的','妩媚的','秀丽的','喜悦的','甜美的','彪壮的','强健的','大方的','俊秀的','聪慧的','迷人的','陶醉的','悦耳的','动听的','明亮的','结实的','魁梧的','标致的','清脆的','敏感的','光亮的','大气的','老迟到的','知性的','冷傲的','呆萌的','野性的','隐形的','笑点低的','微笑的','笨笨的','难过的','沉静的','火星上的','失眠的','安静的','纯情的','要减肥的','迷路的','烂漫的','哭泣的','贤惠的','苗条的','温婉的','发嗲的','会撒娇的','贪玩的','执着的','眯眯眼的','花痴的','想人陪的','眼睛大的','高贵的','傲娇的','心灵美的','爱撒娇的','细腻的','天真的','怕黑的','感性的','飘逸的','怕孤独的','忐忑的','高挑的','傻傻的','冷艳的','爱听歌的','还单身的','怕孤单的','懵懂的');
								// $nicheng_wei=array('嚓茶','凉面','便当','毛豆','花生','可乐','灯泡','哈密瓜','野狼','背包','眼神','缘分','雪碧','人生','牛排','蚂蚁','飞鸟','灰狼','斑马','汉堡','悟空','巨人','绿茶','自行车','保温杯','大碗','墨镜','魔镜','煎饼','月饼','月亮','星星','芝麻','啤酒','玫瑰','大叔','小伙','哈密瓜，数据线','太阳','树叶','芹菜','黄蜂','蜜粉','蜜蜂','信封','西装','外套','裙子','大象','猫咪','母鸡','路灯','蓝天','白云','星月','彩虹','微笑','摩托','板栗','高山','大地','大树','电灯胆','砖头','楼房','水池','鸡翅','蜻蜓','红牛','咖啡','机器猫','枕头','大船','诺言','钢笔','刺猬','天空','飞机','大炮','冬天','洋葱','春天','夏天','秋天','冬日','航空','毛衣','豌豆','黑米','玉米','眼睛','老鼠','白羊','帅哥','美女','季节','鲜花','服饰','裙子','白开水','秀发','大山','火车','汽车','歌曲','舞蹈','老师','导师','方盒','大米','麦片','水杯','水壶','手套','鞋子','自行车','鼠标','手机','电脑','书本','奇迹','身影','香烟','夕阳','台灯','宝贝','未来','皮带','钥匙','心锁','故事','花瓣','滑板','画笔','画板','学姐','店员','电源','饼干','宝马','过客','大白','时光','石头','钻石','河马','犀牛','西牛','绿草','抽屉','柜子','往事','寒风','路人','橘子','耳机','鸵鸟','朋友','苗条','铅笔','钢笔','硬币','热狗','大侠','御姐','萝莉','毛巾','期待','盼望','白昼','黑夜','大门','黑裤','钢铁侠','哑铃','板凳','枫叶','荷花','乌龟','仙人掌','衬衫','大神','草丛','早晨','心情','茉莉','流沙','蜗牛','战斗机','冥王星','猎豹','棒球','篮球','乐曲','电话','网络','世界','中心','鱼','鸡','狗','老虎','鸭子','雨','羽毛','翅膀','外套','火','丝袜','书包','钢笔','冷风','八宝粥','烤鸡','大雁','音响','招牌','胡萝卜','冰棍','帽子','菠萝','蛋挞','香水','泥猴桃','吐司','溪流','黄豆','樱桃','小鸽子','小蝴蝶','爆米花','花卷','小鸭子','小海豚','日记本','小熊猫','小懒猪','小懒虫','荔枝','镜子','曲奇','金针菇','小松鼠','小虾米','酒窝','紫菜','金鱼','柚子','果汁','百褶裙','项链','帆布鞋','火龙果','奇异果','煎蛋','唇彩','小土豆','高跟鞋','戒指','雪糕','睫毛','铃铛','手链','香氛','红酒','月光','酸奶','银耳汤','咖啡豆','小蜜蜂','小蚂蚁','蜡烛','棉花糖','向日葵','水蜜桃','小蝴蝶','小刺猬','小丸子','指甲油','康乃馨','糖豆','薯片','口红','超短裙','乌冬面','冰淇淋','棒棒糖','长颈鹿','豆芽','发箍','发卡','发夹','发带','铃铛','小馒头','小笼包','小甜瓜','冬瓜','香菇','小兔子','含羞草','短靴','睫毛膏','小蘑菇','跳跳糖','小白菜','草莓','柠檬','月饼','百合','纸鹤','小天鹅','云朵','芒果','面包','海燕','小猫咪','龙猫','唇膏','鞋垫','羊','黑猫','白猫','万宝路','金毛','山水','音响');
								$nicheng_tou=array('〆花环少女','peerless 断夏','记忆dē橡皮擦','青藤之凉◇','花开半夏∞','过眼云烟-','△柠檬之夏',' -浪漫果味C','优雅的、叶子','〆﹏淡淡草季','夏忆晨。','●﹎甜美、纯洁','蝶き梦','や‘木朵','≮游影★水清≯','★·°甜了夏天','死寂、漠然','也許明天╯','对我粗暴点','心随我动','不想再单着','','只为了寻找你ㄣ','喜欢成熟点的','纵此生不见','期ぶぁ待爱情','Ω伤心爱恋〆','心像大雨将至那么潮湿','大红唇！','我把床位让给你','ぁ專屬的鬽力￥','萌妹子不软弱','从素颜到淡妆','独孤女王','ㄨ听♂小姐','明智小女人灬メ冭','双面女郎*～','梦她城╮','看戏人°','牵强 ㄟ','愿你安好。',' 简单〃錯_','叫嚣 ゝ','败金女 ╮','梦想de城堡','ゝ余下的溫度','消失 cuLbぢ','- 纠缠','爱情会过期リ','拒绝平庸θ','小女人灬メ冭','一次性聊天i','烟疤德、烙印','︶沐年廴χìа','═╄_щδ冗酒里','ぐ怪性χιàο亽','↘亽心ται閃躲Ψ','荌靜旳埋葬ご','ゞ初心№忘╰→EXO','毞尖丅の承諾','纠结式、想念','黑巧克力、泡沫','丅⒈佽╮嶶笶','╬死亡or爱恋╬','{英雄の尐女夢','←щó鍀àì沵要丆要','迷情女护士','♀sц手牵仒(~)〓','☆送分兲使^','______不败小姐','屌姐 o┤*｀□′ *├o','他的温度。','≧哀家、太后≈','心、妍','何以笙箫默','男友难有','吾木提好帅','IF YOU','套路拿人心','小女人','如你所愿','唯有一颗心','清风伴烈酒','中意','情为何物','橘子味少女','落花落谁家','余生一个他','稳场浪美人','老娘脾气很暴躁','betray','Error','Anesthesia','Orphan','Autism','friendship','Memory 、回忆','Distance','笑着哭最痛','挽歌','欠缺人爱','明人不放暗屁','Wild Boy 野孩子','回忆','一身污味少女','陆小敏','你是年少的欢喜','淤青','假窗','怎厌','倩倩','一岁时就很酷','与你清谈','妲己再美终是妃','致爱','我们的明天','薄荷加冰','从校服到婚纱','找男友','顺其自然','你是我的他吗','约我吧','只陪你睡','陪你醉','为你哭为你笑','忘不了','远在眼前的你','在你面前浪','欠我一个拥抱','那一夜','不谈感情','婚前试爱','找个对我好','夜夜都要','Kris 教主范er','七巧玲珑心heart','Lonelycity.孤城','Frown皱眉','suo⌒ 呓','EXO°青春无悔','大黄鸭GAGAGA','VERTIGO血美人','重唱ensemble','Laundry 爱我别走','天堂Heaven','searull-不离','尾戒BlackIn','最妖娆','眉眼如画、','床上好声音','伴你月光下','爱他念他想他','忠贞不渝','秋日私语','背对背拥抱','比花还妖艳','那辛酸回忆╮','彩虹糖没有糖','锁住烂漫','阳光天使','柚绿时光','哈密瓜','梦中的花','小女人大大爱','无泪的天使','六月飞雪','无泪的天使','影子爱人','恋上巧乐滋','把美好留在明天','落花落谁家','每一段旅程','晚风诉情衷','枯叶蝶','小阳光','梦清幽','傲娇一个我','痴怨','落花入盏','先生借个吻','良人不知深情','玫瑰','笑着哭最痛','你的她应该很美','欠缺人爱','泪印','多情多悲戚','过去是回忆','你给的恶作剧','心比茶凉','无动于衷','凄凉的天','残缺的美丽','推翻爱情','犹有悲歌','人约黄昏后','如梦如幻','执酒笑白衣','清影觅','半世浮生','吾时落叶花开否','嫌我你滚','姐很高也很傲','蓝颜妖精','心软必成患','乱人心','晚安陌生人','梦还在','独家回忆','忘不了你','机器猫','终究还是孩子','微笑面对','诺言','笑谈自己','刺猬','唱一半的歌','含笑饮毒酒','止步爱情','背影狠孤单','洋葱','心尖爱人','别低贱了自己','继续我的骄傲','我叫倍坚强','无话不说','毛衣','以心换心','人心太拥挤','青春笑彦妖娆','不过一场游戏','蜘足','由他','长发很美','毕竟深情不及久伴','我愿久伴深情为你','此岸花

敗','彼岸花開','曾经不算完美','与你才是经典','學會愛自己','亮得过太阳','你背对我着远走','碧海蓝天白婚纱','被情伤过的女人','阿尔卑斯','小眼睛迷人','那份爱','痛过之后是成熟','曾天真现成熟','笑看红尘埃','水杯','重拾女人心','没人替你坚强','我会很洒脱',' 跟过去说拜拜','重头再来','吞咽沧桑','眼淚磨成細沙','染指旳沵唇','我会坚强','身影','努力为明天','姑娘要坚强','不再犹豫','宝贝','爱生活爱自己','天长地久','梦想陪我等天亮','心锁','无资格叫痛','年轻就是资本','陌上桃花开','萤火虫之舞','灿灿宝贝','学姐','落日夕阳','太阳味的风','北鼻控','维他命','过客','大白菜白又白','浪萌妹','娃娃脸','流氓没有兔','可爱一如往常','爱做梦的小孩','我娘她女儿最美','笨小孩','吃货总比痴货强','忆梦小姐','惜梦小姐','小奶瓶','米粒源码','刘小姐',' 雨纷纷','外猛内柔女汉子','白色婚纱','气质与生俱来','美丽与生俱来','森碟姐姐','恬恬妹妹','背后痞女是本性','封心锁','御姐','爱我就该放开我','邻家小妹','我爱哥哥','纠结小妹妹','青梅','谁明浪子心','明媚旳花','草莓小姐','没心动该多好','心无所属','sunyihangmi','枫叶','让我再抱你一次','难能心动','仙人掌','温存','与你久在','请别说分开','不即不离','醉了就可以表白','茉莉','你的回首','回忆不会懂','爱你爱昏了头','代风轻吻你','渐渐放开','爱你的样子','别走远','记忆深处','双唇交战','萌乖女','橘色芒果诺','糖贝莉佳','萌萌小天使','杨家千金','猫儿帽','荧光棒','电爱小公主','缇娜小公主','羽毛','翅膀','萝卜吃兔子','奶油桃子','丝袜','萌萌哒','毒宝宝','口出萌言','宝宝不开心','天黑黑','大雁','小笨丫头','风凌乱了我的发','胡萝卜','长恨春归晚','画子入戏','相见恨晚','红颜为君醉','香水','旧人颜','凡尘清心','一笑百眉生','只为君回首','樱桃','小鸽子','小蝴蝶','冰雪之触','寂寞咖啡','黛色若梦','海豚','人生如梦','划一舟意中人','小懒猪','霸王别姬','寂寞陪衬','妖娆败给风情','挽手说梦话','一生残梦','活得太虚伪','疲惫了身心','抱着孤单一个人睡','空洞旳眼眸','孤独败凉城','沉寂于曾经','生命旳过客','百褶裙','凉陌如花','被命运安排','杨金桥','傲娇一个我','高冷妹子','唇彩','好姑娘都单身','寂寞是你给我的苦','我失你心','烟云似雪','睫毛','空气中弥漫你的笑','美胚控场','伊人泪尽','心已乱人已散','夜里买醉','酸奶','岁月夹杂着忧伤','咖啡豆','幸福过后只剩忧伤','谁顾我冷暖','一生何求','活的好累','我笑我自己','戏演的很漂亮','小蝴蝶','终丢了相思','Call℡Me—宇童','指甲油','怪她多情','随风而去','假装放手','心回归原点','超短裙','身下玩物','你的名字我的心事','纯属游戏','我们床上聊','膝盖淤青','美梦被梦惊醒','花儿的姿态','我的心事','相濡以沫','可惜没有如果','小笼包','十指紧扣','喜欢就好','情深刺骨','喜欢不是爱','含羞草','枫桥旧梦','温柔诱惑人心','水深王八多','灯火阑珊处','如果早遇见','草莓','爱是一种信仰','精神超越肉体','百合','菊里透红','一朵无名花','彩虹小姐','长发如海藻','蜜彩儿','海燕','小猫咪','橙子爱人','新鲜柠檬奶','秋蓝爽月','','花开花落','单纯的曾经','女人本该妖娆','半夏ちミ忆素颜','莫弃あぜ','有缘千里来相会'，'平安健康九十九','恋人心','	Bingo的包子','筱楊','高凤玲');
								
								$nickname_arr=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_nickname')." WHERE weid=".$weid." AND enabled=1 ");
								
								if(empty($nickname_arr))
								{
									$tou_num=rand(0,470);
								}
								else
								{
									$nickname_num=count($nickname_arr);
									$nickname_rand=470+$nickname_num;
									foreach ($nickname_arr as $key => $value) {
										$nicheng_tou[]=$value['name'];
									}
									$tou_num=rand(0,$nickname_rand);
								}
								$nicheng=$nicheng_tou[$tou_num];
								//$wei_num=rand(0,325);
								//$nicheng=$nicheng_tou[$tou_num].$nicheng_wei[$wei_num];
							}

							$province_arr=array('11'=>'北京市','12'=>'天津市','13'=>'河北省','14'=>'山西省','15'=>'内蒙古','21'=>'辽宁省','22'=>'吉林省','23'=>'黑龙江省','31'=>'上海市','32'=>'江苏省','33'=>'浙江省','34'=>'安徽省','35'=>'福建省','36'=>'江西省','37'=>'山东省','41'=>'河南省','42'=>'湖北省','43'=>'湖南省','44'=>'广东省','45'=>'广西','46'=>'海南省','50'=>'重庆市','51'=>'四川省','52'=>'贵州省','53'=>'云南省','54'=>'西藏','61'=>'陕西省','62'=>'甘肃省','63'=>'青海省','64'=>'宁夏','65'=>'新疆','71'=>'台湾省','81'=>'香港','82'=>'澳门');
							$beizhu_arr = array(
								"牵手一份爱情，渴望相伴一生、不离不弃","向这太阳努力冲，抓住心里的那一抹橙色","你的眼睛像一颗恒星 撑着黑夜照亮我的生命","遇见你这么美好的事情，像森林听见风声，像黑夜缠绕星辰，像夏天相配西瓜，像海洋容纳蓝色。","人生如画，有了微笑的画卷便添了亮丽的色彩。","以梦喂马，驰骋岁月；以梦为马，诗酒趁年华。","那时候天空碧蓝，微风轻柔，我们嘴角含笑，成为最初稚模样。","曾经试着用微笑细数你给的伤，无奈最后泪却随微笑流出眼眶。","落寞更加，沉默的背影会有怎样的倔强？","夕阳西下一抹金色映洒满整个海面，这一刻天和地不再是两个个体。","一扇窗隔着一个寂夜和一个独守空房旳女人。","风吹起如花的流年、而你成为最唯美的点缀","弥散在季节的风雨里，温馨在绵绵的记忆中，知否？想借风儿送去讯息：生命如歌，芳菲满园……","我在此岸，你在彼岸。两两相望，两两相忘。","烟花再美也只在一瞬间 忽闪即逝","爱上你就像吃巧克力，苦苦的，却又充满了浓浓的甜蜜","谁愿与我为友哪怕我不善言辞不苟言笑无利可图。","那时，天很蓝，风很暖，以为你会让我依赖到海枯石烂。","一念起，万水千山；一念灭，沧海桑田。","做一个向日葵族，面对阳光，不自艾自怜，每天活出最灿烂的自己。 ","青春不是一段年华，而是一种心境。","双眼紧闭，头晕目眩，却只想被你拥抱。","习惯游荡于夜间，在偏僻地小巷，寻找天使遗落的幸福","-对你的爱不是一种谎言,相信我,我们就一起快乐。","我们就像天使的一半翅膀，只有相拥着才能够飞翔","我想未来的 某一天 穿最美的婚纱 嫁最爱的你","是谁、遗忘了流年、安好了岁月。","人生若只如初见，当时只道是寻常。","陌上红尘在云水间,莫理胭脂中花柳烟.","我失去所有的光芒，唯独那微笑却没有消失。","我涉旷野丛林而来，你撑船渡我，入灿灿花海。","寂寂梨花，淡淡其华，轻轻飘散，随风入画。","我遁着岁月的足迹，走过散落一地的旖旎，寻找流年深处的一季花雨。","你的心倘徉着睡着的湖水，我把对你的谜语写在月亮上，你低声呓语，我吹息了星星。","岁月极美，在于它必然的流逝。春花、秋月、夏日、冬雪。","每一寸思念飘在空中，落成一朵花。","愿所有停留不了的爱，洁白如兰花，纵使明日又隔天涯。","一处花开，一抹闻香，最动人的沁人心脾，花下，人醉。","似水流年，如烟般岁月，看尽百花开遍了四季，谁比谁芬芳，谁比谁甜蜜？","遇见你这么美好的事情，像森林听见风声，像黑夜缠绕星辰，像夏天相配西瓜，像海洋容纳蓝色。","我的心里堆着好多话…堆着堆着开成了花。","我遇见你，是最灿烂的花开，最美丽的意外。","玫红的玫瑰湖与森绿的薄荷岛好像都没办法拒绝。","春天的鲜花开满了墙，你是我的如愿以偿。","你我情如白雪，永远不染尘。","风很清澈，从头到脚都快乐。","那些让你睡不着的心事，都会变成天上的星星。","等你来，海角天涯，和我一起山花浪漫。","只管走过去，不要逗留着去采了花朵来保存，因为一路上，花朵会继续开放的。","枯坐到清晨，阳光替房间开了灯。","桥北雨余春水生，桥南日落暮山横。问君对酒胡不乐？听取菱歌烟外声。","北风是森林里寄来的一首歌，爱是生命长河里的寄居者。","春有百花秋有月，夏有凉风冬有雪。若无闲事挂心头，便是人间好时节。","一帘红雨桃花谢，十里清阴柳影斜。","蒲公英，无牵无挂，无欲无求，风起而行，风静而安。","篱旁夏花绚烂，飘渺间盈盈唯美，探一朵花开，沁一脉馨香……","弥散在季节�

��风雨里，温馨在绵绵的记忆中，知否？想借风儿送去讯息：生命如歌，芳菲满园……","要像花儿一样，无论身在何处，不管周遭环境如何，都依然潇洒的绽放自己的美丽，活出自己的精彩。","一缕阳光、一叶清风、一种情怀、一场播种、一把泥土溢出惬意，鸟语花香般恬暖……","愿你生命中有够多的云翳，来造成一个美丽的黄昏。","清风伴我，黎明破晓，愿与你共饮暖酒新茶，共看细水长流。","夏天的每一阵凉风都不可辜负，要让它带走果香帮你实现愿望","在世如莲，净心素雅，不污不垢，淡看浮华。","你是不是太容易得到我的真心，所以就一定要拿来浪费。","你是清晨一场雨，淋湿在胸口却感觉好温柔。","你头发上淡淡青草香气，变成了风才能和我相遇。","往事不必再提，人生已多风雨，我只愿风止于秋水，而我止于你。","你是夏日里冰凉的啤酒，你是阵雨前裙角掠过的风。","花开若相惜，花落莫相离。","快乐很简单，就是春天的鲜花，夏天的绿荫，秋天的野果，冬天的漫天飞雪。","只闻花香，不谈悲喜，喝茶读书，不争朝夕。","要紧握那些有风的日子，它们吹来你的笑脸，吹来你的善良，带走你的黑暗。","疏影横斜水清浅，暗香浮动月黄昏。","你总会去到那些地方，雪山洁白，湖泊干净，全世界都在对你唱情歌。","你的那片云偶尔也会飘过我的天空。","每件不开心的事就像一个泡沫，只要遇见阳光，一定会消失的无影无踪。","我不是垂暮的老人，我是即将远行的故人，望一望过去，念一念当初，整装继续前行。","时常梳理一下自己，你还是太阳。","童心这种美好，即使颜色淡去，却还是依旧温暖着我们。","人生恰如三月花，倾我一生一世念。来如飞花散似烟，醉里不知年华限。","我愿这颗心，宁静如大海。","时间从来不回答，生命从来不喧哗。一段流年，一场花事。","白色姜花，略微开了，飘着白色的花香。花语，将记忆永远留在夏天。","做个内心向阳的人。不忧伤，不心急。坚强，向上，靠近阳光。","你是世界上最美的琉璃，镶嵌在我的眸子里。","旅行，是心灵的阅读，而阅读，是心灵的旅行。","舍不得的那份情感，如四月的暖风，如绿柳飞扬，如绿草青青。","无论你此刻是否迷茫，在阳光升起的时候，请相信，努力的人最终都有回报。 ","你有那么好的年纪，为什么不笑得更好看些。","若要快乐，就要像太阳花一样：面朝阳光，努力生长，保持本色，不卑不亢。","喜欢你就好像阳光很暖却抱不到天，空很蓝却触碰不到。","你错失了夏花绚烂，必将会走进秋叶静羌。任何事，任何人，都会成为过去，不要跟它过不去。","那些和你在一起的日子，连空气都是甜的。 ","愿以一朵花的姿态行走世间，看得清世间繁杂却不在心中留下痕迹。花开成景，花落成诗。","不要以为你有多漂亮，姐素颜朝天照样比你美","人生一世，草木一秋，皆是过程。美与可爱，有心皆懂。","时光的手，带不走那年蓝青色的盛夏。","我等风，等温柔，也等你张开双手给我拥抱。","温暖的夏日，一杯香浓的咖啡，一份美味的冰淇淋，青春就是这么甜美。","你尚在场的春夏秋冬，全都好的不似人间。","那时候天空碧蓝，微风轻柔，我们嘴角含笑，成为最初稚模样。","你的世界不会只有黑白，明媚的色彩正在等着你，往前走吧！","愿所有错失都得到宽待，计较终变成慷慨。","最好的人，像孩子一样，真诚。像夕阳一样，温暖。像天空一样，宁静。 ","花开两朵，共连一枝，这就是我和我的闺蜜。 ","被爱着的她，连撑伞的样子都像捧着一束玫瑰花。","每一寸温暖过你的阳光

，都是我对你漫长而不消逝的时光。","你经过我身旁，像鹿穿过花岗，风吹开一枝扶桑，春意那么凉。","愿我们，都有能力爱自己，有余力爱别人。","在炎炎夏日，开心一笑是最能解暑的了。☆","慢下来，静下来，听一听花开的声音，告诉自己，生活，真好。 ","君可愿白衣饮茶，清风瘦马，再唱一曲六月雨下。","刚切开的西瓜，是初恋的颜色。","能与好伙伴一起分享世界之美，是生命其中一件最幸福的事！","等老了，和爱人一起，找一个小镇，安静的住下，早上在巷口看日出，晚上相依相偎看夕阳。 ","站在青春的夕阳下，感受着过往，留下浅浅的笑靥，这大概就是我们的狂欢过得青春。","只要心是晴朗的，人生就没有雨天。","一直善良下去，总会离幸福很近，你所给予的都会回到你身上。","我也曾经看着阳光，心里充满感动想起你阳光的侧脸。","就是喜欢夏天的晚上，天上有星星街道上也热闹，一阵阵小风啊吹的人真是舒服。","我们只是想走在一起傻笑，想走在一起说一些怕瞬间就会忘记的笑话。","将来混好了别忘了当年一起拼搏的兄弟。","我有一颗减肥的心和一个吃货的胃，它倆天天PK，我掐指一算，艾玛，今天胃又赢了。","天空开始放晴，微风划过，如此轻柔，想每次你偷亲我的脸颊一样，我笑了，仅仅是因为想起了你。","你总是能让我带着每天的晚安，把梦做到最感动。","真正的平静，不是避开车马喧嚣，而是在心中呵护一朵花开。♂","想去一个星空最美的地方露营，整晚不舍得合眼。☆","成全彼此的碧海蓝天，要比一个人的孤独绵长更为辽阔。","就算分离的再遥远，头顶上，还会是同一片星空，我不孤单。","一束月季，洋兰，配上万年青叶，撒上满天星。","喧杂无援的城市安静下来，霓虹灯幻灭于梦境的尽头。久不寐，我梦见的是比白昼更亮的你。","有喜欢的人真好，就像春天，出门就能闻到花香。","我的世界，因为有你，连路边的风景也很美丽。","你的眸是深情的海，满山的花，堕落了我所有的温情。","许我一段最美的时光，就让我在青春的葱茏里与你相逢。","无论下多久的雨，最后都会有彩虹；无论你多么悲伤，要相信幸福在前方等候。 ","抱着糖匣子，里面空空的，只有甜甜的味道，就像回忆。","做一个向日葵族，面对阳光，不自艾自怜，每天活出最灿烂的自己。 ","想你就像掉进甜甜圈里的小熊，爬不出来却又甜甜的。","你说我的眼睛灿若星辰，那是因为你是星辰，而我的眼中只有你。","如果你采了一支野玫瑰，痛也别放手，她也需要爱。","让你的风铃晃动的，是风；让你的生命灵动的，是爱。","女孩，请在每一刻保持美丽，因为你是不一样的自己，愿你是阳光，明媚不忧伤。 ","乱了心扉的夜，思念深吻着心跳，凝望夜空，那颗最明亮的星星映出了你的模样。","樱花满地集于我心，楪舞纷飞祈愿相随。","我的世界是一片遍布向日葵的原野，那里满眼阳光，绽放希望。 ","满天星每个枝头都有无数的花朵，就像愿望，你不会只有一个愿望，所以希望你所有愿望都能实现。","失去，是每一个幸福的开始。就算什么都没有，我们还有兄弟姐妹。","喜欢童话，是因为那里有最美的结局。","但愿你的眼睛只看得到笑容，但愿你以后的每一个梦都不会落空。","假如每次想起你，我都会得到一朵花，那么我心中早已开满了一座花园。","我喜欢那些闪光的东西，比如冬日的雪花，天上的星星，还有你的眼睛。","即使不带走那片风景，也带走了甜蜜的回忆。","没有永远的晴天，也没有永远的雨季。晴天晒晒太阳，雨天听听雨声，这就是心情！"

,"阳光给你洗洗脸，晨风给你刷刷牙，微笑一下，给自己加油打气。","用快乐搅拌香浓的咖啡，用幸福烘烤原麦的面包，用温暖叫醒亲爱的你。","若，晴天和日，就淡赏闲云；若，风雨敲窗，就且听风吟。","有时候很想去看海，听海哭的声音。","手牽手壹起走過每壹天，我們壹生的承諾。","大雾弥漫整个天空，勾勒起那唯美的曾今。","昨天很重要，它构建了我们的记忆；明天很重要，它让我们有了憧憬和梦想。","你读书，喝茶，听风，看雨，叙生，目望天涯。","有生之年，只诉温暖不言殇，倾心相遇，安暖相陪。","一笑万古春，一啼万古愁，此景非你莫有，此貌非你莫属。","心情就像衣服，脏了就拿去洗洗，晒晒，阳光自然就会蔓延开来。","我渴望自由的呼吸，自由的行走，自由的不受拘束。","一念成悦，处处繁花处处锦；一念成执，寸寸相思寸寸灰。","春风再美也比不上你的笑，没见过你的人不会明了。","一直牵着彼此的手，你不离，我不弃，直到生命的尽头。","淹没在浪漫的气氛里，爱情像一颗小柠檬，酸酸甜甜的滋味。","我还是会相信，星星会说话，石头会开花，穿过夏天的栅栏和冬天的风雪过后，你终会抵达。","勾起嘴角，浅浅微笑；阳光或许微暖，至少不会刺眼。","那些遗留在时光里的小尘埃，刻画成了幸福的纹路。","有时候，心可以看到眼睛看不到的东西。","据说每个男孩子都暗恋过白莲花，亲吻过红玫瑰，最后娶了康乃馨。","雪的白是那么唯美，雨的凉却是那么痛彻心扉。","每每说起你的时候 嘴角总是不自觉上扬","思念是一种幸福的忧伤，是一种甜蜜的惆怅，是一种温馨的痛苦。","牵着你的手，满脸微笑地和你走进电影院。","暂时还找不到更喜欢的人，就先委屈你再被我喜欢会儿吧。","抽屉泛黄的日记，记着那个夏天你我的过去。","你是我温暖的手套，冰冷的啤酒，带着阳光味道的衬衫，日复一日的梦想。","爱情是壶清茶，要用心去泡，用时间去品尝。","蔷薇花开满了记忆的墙壁，我偎依在你的怀中，怀想着天荒地老。","晚风吻尽荷花叶，任我醉倒在池边。","“愿你我都能遇到一段不需要刻意维持的友情。”","故事都会结束，只是有人欢喜有人哭。","故事在深秋开始，却在百花盛开的季节落幕。","没有不老的誓言，没有不变的承诺，踏上旅途，义无反顾！","就算我没有倾国倾城的容貌！也要有摧毁一座城池的骄傲！","我害怕我会厌倦所有人 毕竟我曾经孤傲成疾","你在讨厌别人的同时别人也在讨厌你。","看樱花花谢漫天转，流年轻许，谁画谁容颜，谁写谁眷恋？","谁愿与我为友哪怕我不善言辞不苟言笑无利可图。","夜晚来了我还依然睁着眼睛，是因为我看见了你留在月光下的痕迹。","一个人的喜悦，无非是岁月静好，现世安稳。","现实的世界我们都在慢慢的长大，痛与伤是幸福快乐的代价。","水在流，鱼在游，爱你不需要理由；风在吹，雨在下，我会陪你到天涯;天苍苍，野茫茫，我想陪你去飞翔；你有情，我有爱，和你相恋到永恒；我们永远不分别！","在没有风的天空，我放飞了握在我手中的风筝，看着它仿佛失去了羽翼的天使，笔直的坠出我的眼眸。","有时候就想面朝大海，发一个下午的呆。不言不语，放空自己。","释迦牟尼的一句话：“伸手需要一瞬间，牵手却要很多年，无论你遇见谁，他都是你生命该出现的人，绝非偶然”。-若无相欠，怎会相见。 ","晚安，这两字比任何的一句甜言蜜语都温馨。","我会带着笑脸挥手寒喧","愿你无疾无忧百岁安生不离笑","清晨的第一缕阳光，冲洗我的每一个细胞。","流星，只献给我�

�最美的那一刹那。","有暖暖的阳光,柔柔的微风陪伴就够了ミ　、,","明媚的角落反射着光芒，蝴蝶飞过城市，高楼开出了花。","你说你要给我蒙娜丽莎的微笑，那你就要对我绽放微笑。","樱花开放的季节 我和你相约 ..一起演绎爱情的故事..","看见石头凌空而起，形成一道彩虹般弧线。","我把太阳偷偷地放进了口袋因为很暖.","用一颗不惧过去不畏将来的心去拥抱眼前的碧海蓝天","唯美而迷幻之花香渗入心底。","冷静深邃，却无比丰富是夜晚的海洋。","自然的微笑，生命之水用宽容与爱慰藉心灵。","你曾说我们的爱像最妖娆的水晶，你却不知道水晶是最容易破碎的完美。","幸福是你眼睛，笑起来的美丽","ゅ阳光的撒射，通过的窗帘，勾画出你的容颜。","在流星雨又来临的时刻，我们的友情不会再有界限。","丽人三千九重天，夕阳泛赤朽不垂，横枯湘亭园","看着桌上的白纸黑字丶续写天空的声音","抽烟伤肺，爱情伤心’","我只不过是想要一份不叛离、不伤害，只有温暖的爱。","透过灰色的玻璃望着天，我会知道天也是灰的。","我在他的眼眸中清晰地看见自己，一抹笑容仿佛是尘埃里开出来的沾满了前尘旧事的花朵。","星星在哪里都很亮的，就看你有没有抬头去看它。","那时，天很蓝，风很暖，以为你会让我依赖到海枯石烂。","总有那么一个人，会陪我走完剩余的风景。","那些被风吹过来的种子，掉在心房上，一直沉睡着。","最美好的时光，是为一个人付出一切时的勇敢。","风吹起,夏天对你的承诺。","花布满了山头，你说过这时候会回来把我拥在怀里的。","糖的滋味，甜蜜而温暖。所有美好的一切。","摘不到的星星、总是最闪亮的。","你的指尖半度微凉是我用流年偷换来的倾城月光。","仰头看得更高更远、也只是望到蓝天白云 丶","彩虹，赐我乐观的心态，就像你给的心态一样。","凄美的音符勾勒出唯美的旋律。","爱上一个认真的消遣 、 用一朵花开的时间","我对你的爱就像埃菲尔铁塔的构造坚不可摧","种一朵桔梗、真诚不变德爱。","总有起风的清晨，总有绚烂的黄昏，总有流星的夜晚","你爱说爱笑爱同我回味。","看着烟花那么绚烂的绽放，突然好想好想远处的那个他。","烟花过后，空气中都充斥着一种浓浓的味道，证明它曾经灿烂过。","年少懵懂的情若死寂流星般，瞬间飞逝…","巴黎铁塔，见证多少情人的分离","从天空中落下了蒲公英，像是在诉说着谁回忆。","只有爱你的人有一瞬之光，穿越时空也蔓延渗透人群的心房。","旋转旳木马，能转起涐们多少回忆 ∥","回忆在岁月的痕迹里，沉淀出好看的样子。","在这场爱的拔河里，我不是大赢家可我也没有输，我真的爱你这是我最后的领悟。","失望攒够了，我在原地攒绝望。","向日葵并不是爱着太阳，只是需要他","我的过去，已成为一抹淡淡的花香，遗留在流年之中。","一抹绿，一抹蓝，是最好的心情诠释，开遍心里的每个角落。","四叶草在未来唯美盛开，现在只要你做我的花海","据说喜欢綠色的人都渴望得到一份温暖~","草在结它的种子，风在摇它的叶子，我们这样站着不说话就十分美好。","雨滴从玻璃上滑落的样子，原来是有迹可循的。","碎花般得青春，如同深夜的萤火，飞舞于寂寞的墨色中。","彼此聆听着静脉里血在汩汩流淌，这是世上最美妙的声响。","用一朵花开的时间，等待另一朵花开 。","你要寻找的，只是彼岸的花朵，盛开在不可触及的别处。","明明糖果很甜，我却恋上了咖啡的苦涩。","我不盼绚丽的灿烂，只求微光能挡风寒。","午后的阳光透过这扇窗，搭配着那想笑没笑的模样……","�

��开的世界虽美，有你的世界更美。","对天空来说，星星是最珍贵的。那么，我希望从此刻我成为你的星星。","我从来没有做过跟童话一样如此现实的梦，仿佛触手可及。","在遥远你也能感受巴黎地下吹来的凉风っ","喜欢雏菊是因为，它的花语：永远的快乐，隐藏心底的爱","雪花变成了茉莉，阳光变成了饮料。","有些人，有些事，就是这样，不多一步，不少一步，分秒不差的相遇。","仰起头，眼泪逆流到心中，淹没了曾经最美好的记忆。","属于我们的回忆，哪怕是黑的也是美好的。","风筝在天空飞翔、但是风筝并不能随意飞舞、因为风筝的线握在别人的手里。","我们所谓的天长地久和细水常流，都只不过是安徒生遗留的童话！","花开花落，曲终人散，我仍在原地，等待你的回归、","风中的叶子翩翩起舞，看似飞翔却在堕落","风吹起如花的流年，而你成为最美的点缀。","过完这个冬天。明年依旧春暖花开。","最暗的夜，才会看见最美的星光。","我想有把红雨伞 雨天我们一起打着伞走在雨中","你是太阳，我是暖光，我赌上所有的时光只爱你一个人。","春季繁华夜景让我直入心里","在我下个生日，可不可以送我三件礼物，一个爱人的拥抱，一个感动到哭的惊喜，一场彻彻底底的宿醉。","一路上如烟火怀念没有伤感的日子，错过纠缠不清的人生","看庭前花开花落，荣辱不惊，望天上云卷云舒，去留无意。","深沉的夜幕，只因你的到来，瞬间绽放出万千的星光。","向日葵也知道，该面向太阳那头的希望……","王子与公主的美好生活，永远是爱情城堡里最虚无却最多人梦想的境界。","一叶绽放一追寻，一花盛开一世界，一生相思为一人。","最美丽的事情就是观看四季轮回和遇见你.","不会让自己寂寞，那年看过的烟花，绚丽夺目。","-请给我一次机会，我会化碟飞的更美。","细腻的记忆，一抹流转舌尖的优美。","原来这城市的夜景也可以这么暧昧，这么魅惑人心","牵手一份爱情，渴望相伴一生、不离不弃","你是我今生的专属，就让我们一起度过最美的年华","当风筝厌恶了天空，就会义无反顾的投向大树的怀抱。","愿意用一支黑色的铅笔画一出沉默舞台剧灯光再亮也抱住你 。","遇见一场烟火的表演，用一场轮回的时间。","你是我生命中最美的记忆","正是江南好风景，花落时节又逢君","遥望昨日楼台、已是镜月水花。","东京的樱花盛开，俄们已染指纷飞","阳光在每个裂缝中散落。","蒙娜丽莎的微笑也不及你的微微一笑。","我的心像星星一样散落着,而我的魂像月亮一样在夜空中。","我们就像天使的一半翅膀，只有相拥着才能够飞翔","伦敦的奢华晚餐，雪花已纷纷降落。","梧桐叶上三更雨，叶叶声声是别离。","彼岸花,开彼岸,只见花,不见叶.","缓缓飘零的秋叶，洒落了这一季的落寞。","透过指尖仰望太阳，发现阳光没有想象中那么刺眼。","我们一路走来，告别一段往事，走入下一段风景","fεη怒的时候駜ぬ嘴，你也вμ椥道垍魢會sんμΘ絀ィ┼幺収вμ迴的儍偪話。","我松开一个又一个的手任由他们远去.","此时此刻，我不想带着对你感情去开始我的下一段感情。","至那一朵，满心伤怀的玫瑰花！","那个刻着我们彼此姓名的夏季逐渐绽开，晕染了浅色的天际。","爱，在加温，温暖如歌。","向日葵告訴我，只要面朝太阳努力向上，日子就会变得单纯而美好。","你听，那些余音未散，也许是我门的年华未央。","最美的不是下雨天，是曾与你躲过雨的屋檐。","最美的海岸线、总是很蜿蜒.","趴在窗台看寂寞的星星","你这样距离遥远地存在于幻想之中,却是唯一可以让我感受到暖�

��天涯的人","成功的花儿，人们只惊羡它现实的美丽，当初它的芽渗透了奋斗的泪水，洒遍了牺牲的细雨..","是妳路過我的傾城時光，是我改變了妳的半夏流年。","你梨花泪流湿我罗裙似雨似花","我喜欢春天的花夏天的树秋天的黄昏冬天的阳光和每天的自己。","美好的記憶，美好的人，都需要永遠珍藏在心中","夕阳西下，是我最想念的时候，对着你在的那个城市，说了一声：我想你，不知道，你是否听得到","纵容潮汐的乍起乍落，浪花的忽开忽谢，我依然是你的天涯海角","乌云密雨，彩虹闪电交加局面犹如我们的美好意外~","你是一颗光明的种子，种在我的心田，照亮了我的世界","我见过最美的星星 是你看我的眼眼睛","我要画个更美的世界，美得像我们相爱的那一天。","有一天我会拉着你的手，带你去看你最喜欢的星空","再回首，发现那里开出了一朵花，是我们曾经种下的。","上天赋予的生命，就是要为人类的繁荣和平和幸福而奉献。","人生是花，而爱是花蜜","你是我心上一棵万年青","四叶草在未来唯美盛开.","温暖的你，是我最想遇见的风景。","可不可以相信我讲的童话，把微笑留到盛夏.","春天到了，可否来场不分手的恋爱！","让我的那些与青春，与温暖有关的回忆里都是你的影子。","如果你想和我玩，我會讓你哭的很有節奏。","黎明前的曙光，是说明黑暗已经走远。","万丈阴霾总有一束阳光透彻心底。","原来黎明的起点 就在我们的心里面","你是一束光，带给我暖与爱。","指尖流沙，却已成为了刹那芳华。","花开一世纪，情漫天之心。","渐渐的喜欢上下雨天，打着雨伞，听雨滴滴在雨伞上滴滴答答的声音。","人道海水深，不抵相思半。海水尚有涯，相思渺无畔。","我见过最蓝的天是初遇你的那天","我仿佛又看到那个撑着蓝色雨伞的人，站在雨雾中对我浅浅微笑。","阳光落在你细长的睫毛上，我的眼角也开出了花","我想在你心里长成一棵参天大树 那样根深蒂固不动摇 --","最美妙的感觉就是当我望向你的时候你已经在看我了。","总有一天我会和我爱人一起去看海","用迷离的舞步，跟随着最后一丝月光的脚步。","我想要成为你的眼，把最美的风景收进你的心中。","女人一生最美的时刻，是穿着拖尾婚纱嫁给挚爱的他。","我曾梦见一场旅行 最美的不是朝阳 不是落日 不是海风呼啸 不是巴山夜雨 而是你","平平淡淡就好，不争不吵，自己给自己画蓝天。","在一起的时光是多么美好的事。","在角落唱沙哑的歌，再大声也都是给你，请用心听，不要说话。","我想成为黑暗中的一束光","在不愿谢幕的岁月，让恋爱开出地老天荒的花。","水仙悠悠~爱如茉莉~","十个美梦盖过了天空","在这个年纪爱你，不因为你有车有房，只是那天阳光很好，你穿了一件我爱的衬衫。","再美的风景也比不过夕阳下你的影子","一直在幻想着未来的你和我","画一片蓝天，我手执风筝，放飞对你的思念。","五瓣丁香四叶草","有一种幸福叫四叶草！","想住在向日葵上，即使沮丧也能面对太阳。","好男人志在四方。全部在边疆^ω^","姐乃是怕冷怕热的风流女子。。。","一闪一闪亮晶晶,唱的都是我爱你","愿世间所有的美好都如约而至","斯人若彩虹，遇上方知有","墨尔本的天空是浅蓝色调，我将情歌浅浅唱","君已到来，我亦未老，择良辰待美景。","你的眼睛像一颗恒星 撑着黑夜照亮我的生命","天还是那片天，依旧很蓝","烟花虽美却稍纵即逝，滴水虽微然恒聚而洋","如果还有来生我想变成一棵树 在森林里无声地长成迎接阳光","我愿像一颗流星，划过天际，只为许你一个愿望，燃烧自己。","看起来

像是樱花般的纯洁，实际是罂粟花般的美中带毒。","从你说爱我以后 我的天空 星星都亮了","情话很美 连外人都跟着流泪","雨停了，云出来了。爱情也在翘首盼望着。","烟花再美也只在一瞬间 忽闪即逝","等下一个天亮，我们去上次牵手赏花那里散步好吗","阳光很灿烂，大家都说我笑容很灿烂，心情因为太阳的照射而变得很好","据说离天国最近的咖啡厅，北海道云海。","雨是风的痕迹，风是雨的信息，彩虹则是风雨后的美丽","相爱这个词太漂亮也太辛酸","想和你一起去看海 一起去看从未看过的风景","如果我说我要环游世界 我可不可以围着你转一圈","我总喜欢午后的阳光，听一首曲，品一杯茶，忆一些事，念一些人。","最好的感觉是你我相爱 未曾表白","曾经想做你的蝴蝶，在梦的世界。","你想要更伟大更不朽，还是一瞬间成永恒","自心清明，淤泥成花。","遗失了心爱的礼物在风中寻找从清晨到日暮","吹过你窗前的那阵风是我对你的思念。","无数的花瓣轻轻摇曳，积攒着彩虹般的梦，承载着我的思念。","我是被你囚禁的鸟，得到的爱越来越少。","我、想用自己稚嫩的羽翼环顾你。","拼命努力是为了铺垫未来幸福的大道！","最好的旅行，就是在一个陌生的地方，发现一种久违的感动。","给下一个遇见，给未知的明天","寻到那个和你一样的背影与微笑","伴你一夜良辰许我一世深情可好。","一朵鲜花打扮不出美丽的春天。","一只风筝只能为一根线冒险、一颗心只能为一个人绽放。","他就像一个月亮，旁边那么多星星，何曾有我的光芒。","你的笑你的泪是我筑梦路上最美的太阳。","我想拍下全世界的美景，带给你看。","拥抱是世界上最美丽的语言。","千万个美丽的未来,抵不上一个温暖的现在。","我祈祷有一颗透明的心灵","下雨天，端着咖啡走在街上，享受这续杯的温暖……","喜欢夏天的雨， 冬天的太阳， 和任何时候的你。","你是我万暗生命里最璀璨的星光","爱情就像烟花一样的绽放 在美丽也是一瞬间的华彩","最喜欢欣赏雨中的风景，即使它是狂风暴雨。","你是太阳会发光，我是飞蛾会扑火.","我会借着时光的声音去描摹你的眉眼","我想要四季的阳光 舒适的温度 天荒地老 还有你","岁月悠悠，波光明媚，泡沫聚散，唯有你依然如旧。。。。","每个人都配获得美好的爱情。","°盛开的白樱花开始凋零满地,时光褪尽枯黄离散旧年惆怅°","你可知道，你的世界里，我能看到晴空。","生如夏花之绚烂，死如秋叶之静美","那些一个人的漫漫时光如影像般定格在年少的底片上","一个人走在安安静静的小路上享受夕阳的暖光照耀","一下白天一下黑夜就是时光。","在时光里画张地图与你相遇","我的生活，在每个微笑里开始","你只需要沿途流浪，看够风景，归属自然有。","我对你设置了特别关心，你却对我设置了访问权限，这就是距离。","一个女人的成功之处，就是把自己的男人塑造得让更多女人喜欢。","才发现我飞得越来越高，却越来越看不清天空是的颜色。","如果你是一缕阳光 那么你是否照亮一寸黑暗","海上流浪的许愿瓶，每个心愿都是为你......","我是天空，给鸟儿自由飞","天空是抹忧伤的蓝，海是倒过来的天、","他的微笑百看不腻，像阳光柔和干净。","剪一段旖旎时光，任时间缓缓流淌。","我们把在黑暗中跳舞的心脏叫做月亮","夕阳送你登程，风儿送你远行，留下的是彩霞、晚空。","明天的太阳依旧明亮光芒万丈！","早上的太阳比不过你的温暖，晚上的月亮比不过你的眼睛。","你给的梦和别人不同","我带着憧憬带着希望飞往有你的城市","我愿能朝着太阳生长，做一

个温暖的人，不卑不亢，清澈生活。","我想和最爱的人看今年最美的烟火。","等一个黄昏,爱一个清晨","记忆里尘封的相片，有你最美丽的容颜。","你似阳光，盛满我整个心房。","梦里很多摇晃的绿色光晕，后来渐渐看清楚了，那是一整片巨大而安静的树。","下初雪的时候接吻，会很幸福长久呢","过去的日子即使夹着风尘却也觉得美好","兵荒马乱的时候 把手给我 让我带你走","距离从不会分开两颗真正在乎彼此的心。","月亮再圆也不及星星的美丽","看着 满天的飘雪，你是否也像我一样。。透过漫天飘雪盼着我。。","小小的世界，小小的坚持，在缤纷的年华里，婉转成一句纯美的诗。","童话说雨后会有一道彩虹。","青春最美的不是梦 而是陪你追梦的那个人","最美是牵着你的手一路狂奔","如果，世间不再有黑暗，人人都可以拥有洁白的雪羽。","爱情就像柠檬，99.5%的酸，0.5%的甜","风华莫念指间沙，一朝一梦一年华。","爱情从天上掉下来","把日子过成诗，简单而精致","那壹瞬間，就像雨過雲端，美得就像淚滴壹樣潔白。","最温暖的太阳最适合心的温度","今天天气好晴朗 处处好风光。","美好的爱人在美好的时光里等着我。","你脚下的影子，是我对你的思念。","我喜欢天空的颜色 风的味道 大海的深度和你的声音","我爱的人有着世上最好看的笑脸","好久没看到昙花绽放的样子，就如好久没看到你笑的样子。","你的心，是我想要到达的蔚蓝海岸~~","日子甜甜的 像清晨的柠檬水 像冬日的太阳 像梦里的大海 像第一次遇见你","认识你的那天 是临夏的时候","在适合的年纪穿上最美的婚纱嫁给最稳妥的人.","你说日出很美，未曾说日落很美。","牵着你的手 走过荒芜的沙丘","漫漫长夜，有的只是一个人对一个人的思念。","只因那天阳光很好 人群中我看到了你笑","三十七度半温暖的手，等待着零下一度冰冷的心。","带着我的晚安把梦做到最感动！","有时候、无奈也是一种美","一个爱人，一场婚礼，一个家庭，一个狗狗，一个陪你终老的伴，我想要的生活。","闭上眼看 最后那颗夕阳 美得像一个遗憾","过去的永远都不会再回来 而回来的也永远不会像过去那样完整","一个人走在大街上，吹吹凉风。若能一辈子这样就好了。","滴滴秋露白，点点沧浪水，殷殷恳切意，声声换迷情","我像喜欢朝阳一样喜欢你.","我们都是宇宙中小小的星辰.","梗桔花,永恒不变的爱","听说下雪的时候，牵着心爱的人一直走一直走，就会走到白头偕老。","看着窗外的小星星，一闪一闪亮晶晶。","阳光，很暖。你的笑，很浅。怀抱，很好。宛如梦里繁花。","你开在暮春，他盛于初夏，相遇于繁花似锦，如此美好。","向这太阳努力冲，抓住心里的那一抹橙色","都是你，占据了我的心海，不留一丝空隙~_~","梦境里的你，近在咫尺，却模糊不清。","沉眠在旧时光旧回忆，你懵然的闯进我的梦境。","在美的风景 也经不起春夏秋冬的蹂蹋","心底荡起一丝涟漪。","待浮花浪蕊俱尽，伴君幽独。","不停的在揣测你的心里可有我的名字","那是谁的微笑。 在梦境中开出了繁华绚烂的流年。","我眼里最蓝的天空 是当我第一次靠近你","和快乐的人在一起，嘴角就常带微笑","爱上你就像吃巧克力，苦苦的，却又充满了浓浓的甜蜜","阳光洒满大地，却没有洒进我的心。","世界暗下来，你便是我的光","清晨的阳光和你，傍晚的晚霞和你，午夜的凶灵和你.","我想要一台时光机　带我去有你的每一天","你是我此生遇见最美的风景。","我希望你每天都可以笑 不管是哪种笑。","尺素流年，一寸光阴。彼此相留，怎耐情散。","其实我们都�

��怕痛的人，只是意念中，更怕不幸福。","远赴迷途的空荡灵魂，何时归塑虔诚的最初。","人世间有百媚千红，惟独你是我情之所钟","阳光下的泡沫，是彩色的，就像每天的我，是幸福的。","我独自说的对白，静候彼岸花的盛开...","连夕阳都刺眼。","传说，玛格丽特，是可以预测恋爱的花朵。。","盛夏的阳光好耀眼，一如你灿烂地笑脸。","每一天的你，在我心里都是最美。","四季很好，如果你在。不言不语，都是好风景。","想念时，就看看窗外的天空，无论距离有多远，我们总在同一片天空下","斜阳的灿烂穿透云层包围着消散的群楼。","朝如青丝暮成雪。","我们的爱情像萤石一样美","我要变成一个可以让你永远感到温暖的小太阳","我用我千世万世的命，爱你千世万世。","我有两个影子，一个在前，一个在后。伴我左右","回忆起绽放的那一个宁夏，仿佛可以触摸彩虹。","早起的时候发现下雪了，薄薄的淡淡的，挺美。","街灯下的橱窗，有一种落寞的温暖。","左手牵起右手的爱 无论怎么也分不开","我想未来的 某一天 穿最美的婚纱 嫁最爱的你","听说每一个爱向日葵的人，都能带给人温暖，因为他们心底住着太阳。","看天空的云，堆在了一起。看躺在地上的你，微笑的脸庞。","我想當個歌頌者，在溫陽柔風中輕吟著。","心底最柔软的阳光、来自于你孩子般的模样","我们相遇时最美的那一瞬间，我们，彼此，心动、","旧城里看不见阳光，你和我的一个梦长得好像","你会不会突然的出现 在街角的咖啡店","在我看来 满天璀璨的星光都不如你爱笑的眼睛 如此迷离","选在你爱的日落，合拍我们握紧的手。","海天交接、你的眼神就此抹影。","生命是一场幻觉，而你是我的光。","爱你是最透明的秘密","我想牵着你手 大街小巷走","夕阳独自飘，我心为你留","雪花需要太阳光的融化、感情需要两个人的升华","你的眼睛就像月光下的河水，闪烁着神秘的光泽。","仰望彩虹，雨中打伞而过的美丽，是我对你最深的记忆。","风吹不走信念 雨带不走执着 尽情唱着未来属于我们的歌","把我们的故事谱写成曲，用深情轻轻地梵唱。","蔷薇盛放的年华尽端，你微笑的剪影，是守望静谧的唯一的微光。","你如花般的笑靥，注定了我一生不悔的爱恋。","冥冥的黑夜中你带着我去找寻破晓之光","寻觅于晨雾，在看不清地平线的世界中，那个人的光芒恍若我唯一的希翼。","展望着未来等着与你相遇","妳的眼睛在閃光燈下折射璀璨的光，唯壹想到的詞是流光溢彩。","爱着你，跟着你的志向一起飞翔，无论走了多久，永远微笑着在你怀里。","我们依然是彼此天空中最亮的那颗星星","唯美的爱情，是背后沧海桑田的故事","你的笑容、清澈得仿佛能看见世界的背面","真正的爱，应该超越生命的长度、心灵的宽度、灵魂的深度。","我喜欢淡淡阳光、空气清新，有着老面馒头和牛奶的清晨 那样的充实是我全部的阳光。","我希望未来会有棵大树，为我撑起一片绿色的海洋。","风吹起如花般破碎的流年，而你的笑容摇晃摇晃，成为我命途中最美的点缀，看天、看雪、看季节深深的暗影。","手牵手，一起走进结婚礼堂，让上帝见证我们的爱情′★.．","我们的爱，不求生生世世，但求今生今世。","我给你一滴眼泪，你有没有看到我心中全部的海洋。","心随你动，时间因你而静止。","童话里有你我的故事","夏天里茂盛的树木清香。晒在阳光下的白色被单，暖烘烘的香味。","看着手中的纸飞机、飞向被风吹散的夏天。","用一首花开的时间，述说我对你颠沛流离的思念。","但愿所有的负担都变成礼物，所受的苦�

��能照亮未来迷茫的路。","在薰衣草盛开的地方，会有一场浪漫的记事等待着你……","我在心上留下位置等待你的到来","人海中的你，不知在何方.","最美的不是夕阳，而是夕阳下同你一起走过的时光。","那片属于我们的天空，总是那么美丽。","没有未来的未来 要我如何去面对呢","我们像一首最美丽的歌曲","一段情续写雨漫年华","这一季夏末，我们用最真的话语、告白。","所谓永远，只是代表昨天。所谓爱情，只是代表当时。","如若今生再相见，哪怕流离百世，迷途千年，也愿","我只想陪你，陪你看夜晚的星空，陪你看细水长流，陪你过完一辈子。","一个人走，一个人睡，一个人思索，一个人沉醉。","红尘一梦，终是为你覆了青春","我站在你的左边，对你绽放出如花的笑颜","给爱一个千秋万载，把传奇流芳百世。","一心一意写一个喜欢的故事，一生一世爱一个值得的人。","牵着你的手、一直走下去。","转角的幸福，我们一起守护 ","用我的心為膠卷，眼睛為焦距，捕捉你最動人的笑顏。","手牵手一辈子，只想简简单单和你走到生命的尽头。","阳光明媚，温暖如初，你还没来我怎敢老去。","只想在暖阳中，看到你灿烂的笑容。","写一段爱的传奇，记载有你和我的历史。","完美的爱情，是无声的旋律。","爱就一个字，我只说一次","很多时候不是对方不在乎你，而是你那对方看的太重而已了！","未来的每一步一脚印，相知相惜相依为命，别忘记之间的约定，我会永远在你身边陪着你。","一笑倾城、回眸百媚生","四叶草的发现，只为我们那场最美的遇见。","等待是爱情最美好的姿态。","教堂的钟声，沉淀了幸福所有的旋律，悠扬的传开。","忘了全世界，唯独记得沵旳笑湎","你若倾心，我必倾听。","因为有爱。所以无畏。所以艰辛。","让我感动的不是多么动听的情话，而是简简单单一句我想你","与你的记忆，开在下一个花季。","你温柔的眼神里，有一种淡淡的空灵。","我们相遇在那个雨季，唱出了彼此的回忆！","后来的爱成为一首歌，变成音符，歌声。","你的笑，美的如阳光照在青石板的暖。","最美好的事，是看到某人的微笑；而更美好的事，是他因你而微笑。","我们一起十指相扣到永远。","天空放晴了，我放飞了思念。","在通往良辰的列车上，遇见的如初美好","容颜未老，岁月静好","那一抹阳光的刺眼，夹杂着温暖。","烟花谢，菊花零，繁花落幕只剩余音","世界呈现迸裂时光，照耀了曾经微茫的青春和彼此离散的岁月","我一直都知道，山是水的故事，风是云的故事，但直到现在才知道，你是我的故事。","红晕，翡翠，深红，撑起一片光艳暖人的晴空。","与你缠绵的每一秒，都是我生命里的永远。","烟火执着的，寻找着属于它的火柴。","有一种路叫做浪漫，那里有你给我美好的未来","用云朵记录的情愫，用风级定义的心情。","对你的爱不是一种谎言,相信我,我们就一起快乐。","你都不舍得让自己开心又怎么好意思让自己难过","描述的未来就像一颗颗饱满晶莹的珍珠，如此迷人，又如此美好。","曾经的陌生、现在的美好。","如湖水般清澈的眼眸，让我无法离开视线。","我再下一个路口处等你.....","去做自己想做的一切 趁着还年轻","最好的感觉是，当我朝你看过去时，你已经在凝视着我。","真正的爱情是当我们老了，我还是会记得你当初让我心动的样子。",
								"人群中我一眼就认出了你，因为他们踏在路上，你踏在我的心上","只有特别在意一个人的时候，才会舍得浪费时间去絮絮叨叨一些无关紧要的事。","喜欢看你的右边，那是最美丽的风景线。","我多么庆幸在即将完结的疏雨微光里，等来一场迟到太久的遇见。","阳光放了刚好的温度 拨下柔软的苏涩带着你的笑融洽进阳光原来的味道","如若今生再相见，哪怕流离百世，迷途千年，也愿。","我相信你，我知道你会牵着我带往我去到最美丽的未来","无穷无尽是你深邃的眼睛，看着你就可以让我在茫茫人海中感到安定。","相信，会有那么一天，会有那么一个人，在我最伤心的时候，为我撑起一片天","最爱你得人是我，最爱我的人是你，愿一切安好 .","最大的幸福莫过于三件事：有人信你，有人陪你，有人等你。","你可愿意与我联弹一曲梦中的婚礼。","你停在生命的出入口，为我找寻一块无雨的天空。","华丽的乐章在慢慢弹奏着我们的幸福。","我的微笑可以给任何人，但我的心只能给一个人。","一个你，一个我，一心一意，爱就是这么简单。","时间是最好的布景，而我将是他生命里最炫的主演，谁也无可替代。","每天望着星星发呆，想着你。","一个人，一场戏，一辈子。 两个人，一台戏，此生唯一。","有你有我，并不寂寞。","每一个故事都会结束，但是生活中，每一个故事的结束同时也是一个全新的 开始。","你揉着我的发，细数记忆的碎沙。","下一秒、倾听自己呼吸的声音。","有些记忆，有些事情，有些旋律，不用回忆就会想起，因为它一直在你心里","向日葵说，心只要向着太阳就有温暖。","享受午后的悠闲，窗台很安静，耳边环绕着磁性的旋律。","被风吹过的地方、有一抹痕迹叫思念","属于你我的初恋。","如果我有仙女棒，一定会把所有悲伤变快乐","默契就是我们会不约而同地唱起某一首歌曲里的同一句歌词。","这个绚烂多姿的季节，让我们永远一直厮守。","心甘情愿爱上一个人，是世间再美好的事。","留下一滴沙漏，那是我在想你的痕迹 。","晴天，我是最纯白的那朵云","我要用微笑带过一切去说服明天","若无缘、亦无恨。若无心、亦无情。若无恨、亦无怨。若无怨、亦无憾。","那轮傍晚的落日，哀怨地为隔世的爱情画上一个句号。","风停了剩尘埃飘落 梦走了谁来叫醒我","这个世界不止苟且，还有诗和远方。","灯光，继续闪耀。烟花，继续绽放。音乐，继续回响。","风华是一指流砂，苍老是一段年华。","现世流年，虚浮尽染，谁还记得年少时惨白的誓词","悉数记忆的流沙，那些逝去的年华，洗尽了我的尘沙","只想有一个对我好的人，跟我平平淡淡的走完下半生","也许每一个女孩的心理，都会有一个童话般的梦吧。","喜欢在和你在一起，手牵手的仰望着漫天星辰，轻声许愿，我们一辈子在一起。","阳光是夏天的标志，是向日葵的家乡，是幸福的归宿。","光阴过处，永远都是擦肩而过的忧伤","最美不是下雨天，是曾与你躲过雨的屋檐。","繁花的凋零之是爲了襯托曾經的美好。","当泪痕开始勾勒成遗憾，回忆也配合着夸饰伤感。","过往的青春，诉写白纸般的纯真","离开的剪影倒叙、伱是否会忆起我们走过的曾经。","雪花，在寒冬的傍晚悄落。","雪花，飄舞空中，像是我們初識那天，輕而柔美，簡簡單單，純凈潔白，像是你的象徵！","年华，是谁手中跌落的繁花","柔情的望着一杯隔夜的咖啡，心有点灰有点凉，我想也只有这杯咖啡能意会。","当你微笑的时候，全世界都会对你微笑。","将双手抱住头仰望天空，无限的思绪和遐想开始蔓延，飞向远方..

.","流星雨又来临，同时也带来了一种东西，它叫做幸福！","我甚至一秒都没有拥有过你 却感觉失去了你一万次","倾听一段安静的旋律、用一晃想念的时间","微笑的天空~顺其自然，一切随缘，纯净透明，自由自在，把爱随身携带！","我喜欢灰色，那惆怅的感觉，渲染着离别。","爱情就像烟花的绽放，再美丽也是一瞬间的华彩 。","想送給你那一朵握緊在手裏的花，還不夠完成一個童話。所以看著你淺笑安然，匆匆走過有我的年華。","天黑了还会亮，日出真的很美。","即使我被遗忘。再也不能让你，在异地的月光下，倾听故乡的小夜曲。我仍会以花的姿态，开放在你的归途。","再见，那定格，斑驳，泛黄，然后脱落，最终被遗忘了的美好。","人生若只如初见，何事秋风悲画扇。","用一朵花轮回的时间，见证我最美好的年华。","我希望萤火虫那样一辈子都只为你发光…","荒芜的青春，充斥着迷离的哀伤。你离去的身影依旧徘徊在记忆里。","勇敢的离开，就像风筝那样，飞向，蓝得那么灼热的天。","习惯游荡于夜间，在偏僻地小巷，寻找天使遗落的幸福","一袭嫁纱，宛若蝴蝶，无法诠释的美，在瞬间定格成永远。","花开旳美，美不过妳笑容旳妩媚。午夜梦回，怕景物憔悴。","一个花开的季节，用向日葵来温暖眼瞳。","默然相爱，寂静喜欢 。","一条折不断的线，系上那无关记忆的蝴蝶结。","风把记忆吹成长线，原本清晰的脚印也被尘土覆盖，我们间的定局也无从改变。","一瞬的美丽，却是记忆里一世的永恒。","流沙漏得太快，只因為握得太緊·~","繁华奢庸，只撇下了一幕沧伤。","吾之若兮、心之念兮。","晴空的世界，没有奇诺，只有卡布。","只要把脸迎向阳光，你面前就不会有阴影。","所以我只能在宁静的黑夜中求睡眠领我走过所有静谧。","时间不知不觉，我们后知后觉...","我是ー株倔强向日葵，寻找ー个属于我的小太阳。","长歌啼出，小情歌哼着浅蓝色曲调，","我和你注定只能是繁华过后的孤灯，在苍茫的背影下写满了无奈的忧伤。","任時光匆匆流去，我只在乎你，心甘情願感染你的氣息。","你的笑，唯美了那一束紫蓝色的薰衣草。","你本来是孤独的壁虎, 我生来是掌上明珠","现在的拼命努力，不过是让自己日后有想要就买的魄力。","如果我比她更早出现，你爱的人会不会就是我了。","他只是我错过的夏天 暖暖的又凉凉的 终究要过下一个季节。","你给我的笑颜、惊艳了我所有的旧时光。","我希望圣诞节会下雪,因为你答应会陪我.","爱情最美好的是，在繁华处戛然而止。","凝眸的泪眼，只是午夜梦回时镜中的一个孤影。","潇湘之雨 流年之末四處散淡的寂寞。","一扇窗隔着一个寂夜和一个独守空房旳女人。","安静的格调，享受静止的沉默和无人的寂寥","海平面远方开始阴霾，悲伤要怎么平静纯白。","安静的抽离在你的世界里，渐渐地把你搁浅","经不住似水流年，逃不过此间少年。","那些陪伴着我的遥远的小星星，在一个个你美丽的谎言中显得暗淡无光","当年华老去的时候，我定会记得我曾那么深深爱过你。","歌词里唱的人变成了谁, 我积攒满海岸的花为你守候","记录你的点滴，只想保留最后一丝回忆。","望着天空，我只能呆呆的想着我们从前的回忆。","站在车来车往的十字路口，抬头看天空斑斓的云朵。","我们都站在离别的火车轨道旁，双眼像没有焦距的镜头，眼前的景色渐行渐远。","拾起记忆的碎片，还零碎地刺手。","沉静的空气，环绕在身边，让时间失衡。","空气中有种末日的味道，地平线在疯狂燃烧.","在那人烟稀薄的大街上，触摸秋天淡淡的

伤。","那过期的诺言即使破碎，我也会把他埋葬在心里","掩埋了泪眼的斑驳，在转角之后扣上故事门锁","你于我如阳光，但总有日落的时候","在看不见的角落里，阳光照不进的秘密","瞧那路灯，暗黄色，照亮了那一隅之地，牵扯出缠绵的过往。","若相惜 何须执手问年华 ","浮云如你，又怎能为平凡停留","谁为谁画地为牢。谁又为谁桑海仓田。","缘分，默默地守候在某个渡口，等待着爱情的携带。两颗空洞的心，不约而同。","我的淚，落在残花上，摔的粉碎。","那就由我陪你, 看遍所有会笑的星空。","渐渐的我学会了隐身，渐渐的我不喜欢在群里说话，渐渐的我不喜欢和别人聊天，渐渐的身边的人越来越少。","我不能让所有人都满意，因为不是所有人都是人！","谱写自己的路，别再让身影失去平衡而慢慢下沉。",
							);

							$xuni_num=pdo_fetchall("SELECT mid from ".tablename('jy_ppp_xunithumb')." WHERE sex=".$sex);
							if(!empty($xuni_num))
							{
								$xuni_num_arr=array();
								foreach ($xuni_num as $key => $value) {
									array_push($xuni_num_arr, $value['mid']);
								}
							}
							$brith=mt_rand(315504000,788889600);
							
							if(empty($_GPC['province']))
							{
								$province=array_rand($province_arr);
							}
							if(empty($_GPC['city']))
							{
								$city=$province.'01';
							}
							$beizhu_num=mt_rand(0,796);
							$beizhu=$beizhu_arr[$beizhu_num];

							if(!empty($xuni_num))
							{
								$thumb_num_t=array_rand($xuni_num_arr);
								$thumb_num=$xuni_num_arr[$thumb_num_t];
								$thumb=pdo_fetchall("SELECT * FROM ".tablename('jy_ppp_xunithumb')." WHERE mid=".$thumb_num);
								$avatar_l=pdo_fetch("SELECT * FROM ".tablename('jy_ppp_xunithumb')." WHERE mid=".$thumb_num." AND avatar=1 ");
								if(empty($avatar_l))
								{
									$avatar_l=$thumb[0]['thumb'];
								}
								else
								{
									$avatar_l=$avatar_l['thumb'];
								}
							}

							$data=array(
									'weid'=>$weid,
									'mobile'=>$mobile,
									'pwd'=>$pwd,
									'sex'=>$sex,
									'nicheng'=>$nicheng,
									'province'=>$province,
									'city'=>$city,
									'beizhu'=>$beizhu,
									'brith'=>$brith,
									'avatar'=>$avatar_l,
									'status'=>1,
									'type'=>3,
									'mobile_auth'=>1,
									'card_auth'=>1,
									'createtime'=>TIMESTAMP,
								);
							pdo_insert('jy_ppp_member',$data);
							$mid=pdo_insertid();

							$data10=array(
									'weid'=>$weid,
									'mid'=>$mid,
									'dyid'=>$dyid,
								);
							pdo_insert("jy_ppp_xuni_member",$data10);

							if(!empty($thumb))
							{
								foreach ($thumb as $key => $value) {
									$data6=array(
											'weid'=>$weid,
											'mid'=>$mid,
											'type'=>1,
											'thumb'=>$value['thumb'],
											'createtime'=>TIMESTAMP,
										);
									pdo_insert('jy_ppp_thumb',$data6);
								}
							}

							$height=mt_rand(150,175);
							$weight=mt_rand(85,120);
							$blank=0;
							$blood_arr=array('A','B','AB','O');
							if(!empty($blood_arr))
							{
								$blood=array_rand($blood_arr);
								$blood=$blood_arr[$blood];
							}
							if(empty($blood))
							{
								$blood=0;
								$blank++;
							}
							$education_arr=array('高中及中专','大专','本科');
							if(!empty($education_arr))
							{
								$education=array_rand($education_arr);
								$education=$education_arr[$education];
							}
							if(empty($education))
							{
								$education=0;
								$blank++;
							}
							$job_arr=array('私营业主','企业职工','政府机关/事业单位工作者','其他');
							if(!empty($job_arr))
							{
								$job=array_rand($job_arr);
								$job=$job_arr[$job];
							}
							if(empty($job))
							{
								$job=0;
								$blank++;
							}
							$income_arr=array('2000-5000','5000-10000','10000-20000');
							if(!empty($income_arr))
							{
								$income=array_rand($income_arr);
								$income=$income_arr[$income];
							}
							if(empty($income))
							{
								$income=0;
								$blank++;
							}
							$marriage_arr=array('未婚');
							if(!empty($marriage_arr))
							{
								$marriage=array_rand($marriage_arr);
								$marriage=$marriage_arr[$marriage];
							}
							if(empty($marriage))
							{
								$marriage=0;
								$blank++;
							}
							$house_arr=array('已购房','与父母同住','租房','其他');
							if(!empty($house_arr))
							{
								$house=array_rand($house_arr);
								$house=$house_arr[$house];
							}
							if(empty($house))
							{
								$house=0;
								$blank++;
							}
							$data2=array(
									'weid'=>$weid,
									'mid'=>$mid,
									'height'=>$height,
									'weight'=>$weight,
									'constellation'=>$constellation,
									'education'=>$education,
									'job'=>$job,
									'income'=>$income,
									'marriage'=>$marriage,
									'house'=>$house,
									'blank'=>$blank,
									'createtime'=>TIMESTAMP,
								);
							pdo_insert("jy_ppp_basic",$data2);


							$blank=0;
							$child_arr=array('想','不想','还没想好');
							if(!empty($child_arr))
							{
								$child=array_rand($child_arr);
								$child=$child_arr[$child];
							}
							if(empty($child))
							{
								$child=0;
								$blank++;
							}
							$yidi_arr=array('能','看情况','不能');
							if(!empty($yidi_arr))
							{
								$yidi=array_rand($yidi_arr);
								$yidi=$yidi_arr[$yidi];
							}
							if(empty($yidi))
							{
								$yidi=0;
								$blank++;
							}
							$leixin_arr=array('活泼开朗','善解人意','娇小可爱','温柔体贴','落落大方','成熟魅力','眉清目秀','性感妩媚','雍容华贵');
							if(!empty($leixin_arr))
							{
								$leixin=array_rand($leixin_arr);
								$leixin=$leixin_arr[$leixin];
							}
							if(empty($leixin))
							{
								$leixin=0;
								$blank++;
							}
							$sex2_arr=array('能','看情况','不能');
							if(!empty($sex2_arr))
							{
								$sex2=array_rand($sex2_arr);
								$sex2=$sex2_arr[$sex2];
							}
							if(empty($sex2))
							{
								$sex2=0;
								$blank++;
							}
							$fumu_arr=array('愿意','看情况','不愿意');
							if(!empty($fumu_arr))
							{
								$fumu=array_rand($fumu_arr);
								$fumu=$fumu_arr[$fumu];
							}
							if(empty($fumu))
							{
								$fumu=0;
								$blank++;
							}
							$meili_arr=array('笑容','眼睛','头发','鼻梁','嘴唇','牙齿','颈部','耳朵','手','胳膊','胸部','腰部','脚','腿','臀部','眉毛');
							if(!empty($meili_arr))
							{
								$meili=array_rand($meili_arr);
								$meili=$meili_arr[$meili];
							}
							if(empty($meili))
							{
								$meili=0;
								$blank++;
							}

							$data3=array(
									'weid'=>$weid,
									'mid'=>$mid,
									'child'=>$child,
									'yidi'=>$yidi,
									'leixin'=>$leixin,
									'sex'=>$sex2,
									'fumu'=>$fumu,
									'meili'=>$meili,
									'blank'=>$blank,
									'createtime'=>TIMESTAMP,
								);
							pdo_insert("jy_ppp_desc",$data3);

							$aihao_arr=array('上网','研究汽车','养小动物','摄影','看电影','听音乐','写作','购物','做手工艺','做园艺','跳舞','看展览','烹饪','读书','绘画','研究计算机','做运动','旅游','玩电子游戏','其他');
							$tezheng_arr=array('孝顺','自我','有责任心','随和','憨厚','感性','好强','冷静','闷骚','幽默','好动','宅','体贴','勇敢','讲义气','正直','温柔','稳重');
							$aihao=array_rand($aihao_arr);
							$aihao=$aihao_arr[$aihao];
							$tezheng=array_rand($tezheng_arr);
							$tezheng=$tezheng_arr[$tezheng];
							$data4=array(
									'weid'=>$weid,
									'mid'=>$mid,
									'aihao'=>$aihao,
									'createtime'=>TIMESTAMP,
								);
							pdo_insert("jy_ppp_aihao",$data4);
							$data5=array(
									'weid'=>$weid,
									'mid'=>$mid,
									'tezheng'=>$tezheng,
									'createtime'=>TIMESTAMP,
								);
							pdo_insert("jy_ppp_tezheng",$data5);

							echo 1;
							exit;
						}
						else
						{
							if($password!=$member['pwd'])
							{
								echo 2;
								exit;
							}
							else
							{
								$xuni_temp=pdo_fetch("SELECT id FROM ".tablename('jy_ppp_xuni_member')." WHERE weid=".$weid." AND dyid=".$dyid." AND mid=".$member['id']);
								if(!empty($xuni_temp))
								{
									echo 2;
									exit;
								}
								else
								{
									echo 3;
									exit;
								}
							}
						}
					}
					else
					{
						echo 4;
						exit;
					}
				}
				else
				{
					include $this->template('dy_add');
				}
		}
		else
		{

			echo "<script>
					window.location.href = '".$this->createMobileUrl('dy_login')."';
				</script>";
		}
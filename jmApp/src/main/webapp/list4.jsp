<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
<title>关于</title>


<link rel="stylesheet" type="text/css" href="/jmApp/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/jmApp/bootstrap-3.3.5-dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="/jmApp/bootstrap-3.3.5-dist/css/buttons.css">
	<link rel="stylesheet" href="/jmApp/circle_progress/css/progress.css">
	<link rel="stylesheet" href="/jmApp/css/style.css">
	<link rel="stylesheet" href="/jmApp/datepicker/css/bootstrap-datepicker3.css">
	<script src="/jmApp/bootstrap-3.3.5-dist/js/jquery.min.js"></script>
    <script src="/jmApp/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/jmApp/css/bootstrap.css">
  
<style type="text/css">

<!--
body{ font-family: "Microsoft YaHei";
background-color:#F5F5F5;
color: #333;}
/* #lib_Tab1_sx{margin:0px;padding:0px;margin-bottom:15px; overflow:hidden;} */
#container{
	width:980px;
	height:auto;
	background:#333;
	margin:0 auto;
	}

.lib_Contentbox_sx{width:800px;
	height:auto;
	background-color:#FFF;
	float:left;
	margin-left:50px;
	border: solid 1px #eaeaea;
	margin-bottom:60px;}
-->
</style>

</head>
<script>
<!--
function setTab(name,cursel,n){
 for(i=1;i<=n;i++){
 var menu=document.getElementById(name+i);
 var con=document.getElementById("con_"+name+"_"+i);
 menu.className=i==cursel?"hover":"";
 con.style.display=i==cursel?"block":"none";
 }
}
//-->
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div style="margin-top:100px;margin-left:60px; margin-right:100px;" id="lib_Tab1_sx" class="lib_tabborder_sx">
<div class="col-md-2"
			style="border-right: solid 2px #e9e9e9;font-size: 18px;">
			<ul class="nav nav-pills nav-stacked" role="tablist"
				style="text-align: center;">
				<li id="one1" name="1" role="presentation"  onclick="setTab('one',1,4)"
					class="hover"><a aria-controls="item" role="tab"
					data-toggle="tab"><span aria-hidden="true"
						style="margin-right: 10px;"></span>关于九马</a></li>
				<li id="one2" name="2" role="presentation"  onclick="setTab('one',2,4)"><a
					aria-controls="account" role="tab" data-toggle="tab"><span
						aria-hidden="true" style="margin-right: 10px;"></span>发起人手册</a></li>
				<li id="one3" name="3" role="presentation" onclick="setTab('one',3,4)"><a
					aria-controls="order" role="tab" data-toggle="tab"><span
						aria-hidden="true" style="margin-right: 10px;"></span>用户协议</a></li>
				<li id="one4" name="4" role="presentation"  class="active" onclick="setTab('one',4,4)"><a
					aria-controls="persion" role="tab" data-toggle="tab">原则与机制</a></li>

			</ul>
		</div>
 <div class="lib_Contentbox_sx "> 
  <div id="con_one_1" style="display:none">
  <div align=center>
  <b><h2>关于玖马</h2></b><br>
			<h4>
				关于众筹你早已听过了很多道理<br> <br> 所以抱歉，我们打算引用一段耳熟能详的话，来表达我们的三观<br>
				<br>
				<br> <br> <font face="方正舒体">向那些疯狂的家伙们致敬<br> <br></font>
				<font face="Viner Hand ITC">Here’s to the Crazy Ones.<br></font>
				<font face="方正舒体"><br> 他们我行我素，桀骜不逊，惹事生非，与世人格格不入<br></font>
				<font face="Viner Hand ITC"><br> The
					misfits.Therebels.Thetroublemakers.The round pegs in the square
					holes.<br></font> <font face="方正舒体"><br> 他们用不同的角度看待事物<br></font>
				<font face="Viner Hand ITC"><br> The ones who see things
					differently.<br></font> <font face="方正舒体"><br>
					他们从不墨守成规，他们也从不安于现状<br></font> <font face="Viner Hand ITC"><br>
					They’re not fond of rules.And they have no respect for the status
					quo.<br></font> <font face="方正舒体"><br>
					你可以引用他们，也可以否决他们，质疑他们，颂扬抑或是诋毁他们<br></font> <font face="Viner Hand ITC"><br>
					You can quote them, disagree with them,disbelieve them, glorify or
					vilify them.<br></font> <font face="方正舒体"><br> 但唯独不能漠视他们<br></font>
				<font face="Viner Hand ITC"><br> About the only thing
					that you can’t do, is ignore them.<br></font> <font face="方正舒体"><br>
					因为他们改变了事物<br></font> <font face="Viner Hand ITC"><br>
					Because they change things.<br></font> <font face="方正舒体"><br>
					他们发明、想象、治愈<br></font> <font face="Viner Hand ITC"><br>
					They invent. They imagine. They heal.<br></font> <font face="方正舒体"><br>
					他们探索、创造、引领<br></font> <font face="Viner Hand ITC"><br>
					They explore. They create. They inspire.<br></font> <font face="方正舒体"><br>
					他们让人类向前跨了一大步<br></font> <font face="Viner Hand ITC"><br>
					They push the human race forward.<br></font> <font face="方正舒体"><br>
					也许他们是被迫成疯<br></font> <font face="Viner Hand ITC"><br>
					Maybe they have to be crazy.<br></font> <font face="方正舒体"><br>
					一张白纸你能看到还没画出来的图画？<br></font> <font face="Viner Hand ITC"><br>
					How else can you stare at an empty canvas and see a work of art?<br></font>
				<font face="方正舒体"><br> 四周寂静你能听到还没写出来的歌曲？<br></font> <font
					face="Viner Hand ITC"><br> Or, sit in silence and hear
					a song that hasn’t been written?<br></font> <font face="方正舒体">
					<br> 抑或仰望星空你能看出天竟物演？<br>
				</font> <font face="Viner Hand ITC"><br> Or, gaze at a red
					planet and see a laboratory on wheels?<br></font> <font face="方正舒体"><br>
					这样的人是有用之才<br></font> <font face="Viner Hand ITC"><br> We
					make tools for these kinds of people.<br></font> <font face="方正舒体"><br>
					别人眼里的疯子，我们眼中的天才<br></font> <font face="Viner Hand ITC"><br>
					While some may see them as the crazy ones, we see genius.<br></font>
				<font face="方正舒体"><br> 只有疯狂到以为自己能够改变世界的人才能真正地改变世界<br></font>
				<font face="Viner Hand ITC"><br> Because the ones who
					are crazy enough to think that they can change the world, are the
					ones who do.<br> <br> <br> </font>
				<p>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;每一段故事都有开头与结尾，我们注重的是从零到一，从一而终的过程
			如果你也正好是一个不安于现状，特立独行的人，想要改变些什么联系我们，
			用你认识世界的独特方法，坦然地去推动周遭的改变</p>

				<br> <br>
			</h4>
		</div>
		<div>
			<h4>
				地址：杭州市余杭区迎宾路355号永安大厦16F<br> <br> 电
				话：0571-86483665/88662566<br> <br> 邮 箱：543613995@qq.com<br>
				<br>
			</h4>
		</div>
  </div>
  <div id="con_one_2" style="display:none">
  <div align=center> <b><h2>发起人手册</h2></b></div><br><br>
欢迎你们<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;欢迎来到我们的服务平台，这是一个基于共同的创作态度和做事风格而形成的影人社区。无论是网络大电影、微电影、电影电视剧、只要你的想法足够打动人，这里大多数人都会愿意倾听，并且帮你完成这个想法。
用户的每一次支持，都是我们最珍视的，所以除了创意，你们还需要拿出诚意，除了用心，还要愿意付出真心。
希望你们在这里开启一段不一样的旅程。<br><br>
这里能为你做什么<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;也许拍电影一直是你的梦想，我们可以为你提供资金、场地、设备，但是一部优秀作品的开始永远是一个好的剧本和拥有凝聚力的团队，这里你所想要的一切，都需要真诚付出。
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;91九马在这个过程中，提供的服务不止这些，比如项目评估，这是市场验证的一部分，当然还有各种风险控制的方式，来确保资金的安全透明。<br>
虽然我们不能保证每一个项目都入选，每一个项目都成功，但这是一个互相付出的过程，所以平台给你的服务，与你给支持者的承诺，我们都要确保以最大的力度去完成。<br>
你需要做什么<br>
上传你的信息<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;注册成为会员，并通过实名认证，这样你就有了发起项目的资格，填上必要的项目信息，方便我们第一时间联系你们。<br>
为了让我们对你的项目有更深入的了解，我们会提供统一的项目文档。<br>
完成之后，我们将对你的项目进行全面的评估，预估风险，请相信这是一个非常必要的过程，并且会让后续的进程更加简单愉快。<br>
接下来，还有几件非常重要的事情，直接关乎众筹的成败。<br>
设置支持金额与回报<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;你可以设置3-5个用于支持的选项，金额不等，从几十、几百到几万，这样来吸引更多的用户来支持。<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;设置回报的原因，是为了让支持者更有意愿参与到你的项目中来，有些回报可能微不足道，可是它们体现了你的用心，并且可以积聚一群有共同兴趣爱好的人，没有什么比这更有趣而充实的了。<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;你需要公布回报发放的时间，这是对支持者的一个承诺，你有责任尽全力完成它。<br>
你应该选择一个更有信心完成的兑现时间，减少自己的压力。<br>
如果你遇到问题或有可能拖延，一定要让你的支持者知道。告诉他们发生了什么，给他们一个新的时间。他们很少会因此指责你。<br>
提交项目<br>
现在你对众筹过程已经有了清晰的了解，可以提交项目资料了。<br>
如何提交<br>
•注册并登录91九马众筹账号<br>
•点击官网首页右上角的“发起项目”<br>
•填写完整信息后“存为草稿”<br>
•点击页面顶端“提交审核”<br>
审核须知<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;初审一般会在7个工作日内完成，如果未通过，你将收到站内信或者邮件通知；如果通过，我们会与你联系。<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;不同种类的项目有不同的审核标准，在筛选项目的时候，我们会选择素材相对丰富、更符合平台调性的项目，一定程度上可以参照已上线的同类项目。<br>
宣传尤为重要<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;让越多的人知道你的众筹项目，并且找到感兴趣的对的人，对于众筹的成功至关重要，所以你现在要做的就是，尽一切可能地宣传自己的项目。<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;首先告诉你最好的朋友和家人，你启动了一个项目，然后在社交媒体里共享项目。你的朋友和家人是你最初的支持者和最初的消息传播人，在整个众筹过程中，你都需要你的社交圈的帮助。<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;你可以把你的朋友加入更小的微信群中，保证众筹消息会传给每个人。给他们一个简洁的介绍以及突出你的一些奖励。记住，简洁的同时，千万不能忘记链接到你的项目页面。
单独和人沟通<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;一个吸引人的个性化的消息，是让别人知道你的项目最有效的方式。当你在社交媒体发布你的消息后，你可以单独跟人交流。试着强调项目里非常具体的细节，你认为别人可能会喜欢的。<br>
接触媒体<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;记者们也在寻找新的故事和想法。虽然没有魔法能让媒体关注你和你的项目，但你可以聚焦在你是谁以及你正在努力创造什么。如何让你的项目让更多人知道？首先，是你的想法，而不是你在众筹。<br>
找到更多群体<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;如果你要制作一部电影，你一个人的努力可能不够，你要确保所有演员和工作人员参与。
保持沟通<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;和你的支持者保持沟通，遵循共同的合伙人机制，发布最新的项目进展，保持公开透明的原则，不仅众筹前提供真实的资料给用户，众筹完成后也要及时公布项目进展和财务状况，以保障项目投资人合法的权益。<br>
费用收取<br>
众筹会产生这些费用<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;在众筹项目完成后，91九马众筹将依据《众筹项目推荐协议》代扣第三方支付平台手续费，获取相应的佣金.。<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;权益类回报（分红权、加盟权、代理权、代销），91九马众筹平台代扣第三方支付平台手续费1.5%后，再扣5%作为佣金，合计扣除该回报实际众筹款项的6.425%。<br>
文化创意类回报（拍摄制作或宣传推广影视作品、举办活动或展览），91九马众筹代扣第三方支付平台手续费1.5%后，再扣5%作为佣金，合计扣除该回报实际众筹款项的6.425%。
众筹成功后，支持者要求退款或存在其他纠纷的，由发起人负责，此种情况下不影响91九马众筹收取佣金，已代扣的手续费亦不予返还。此处若存在与《众筹项目服务协议》具体条款中冲突的条款，以《众筹项目服务协议》为准。<br>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;众筹未成功，且发起人未在《众筹项目服务协议》约定范围内触发违约事由，不收取佣金，手续费由平台承担。<br>

</div>
  
  <div id="con_one_3" style="display:none">
  <div align=center> <h2> 91九马众筹用户注册服务协议</h2></div><br><br>
第一条 签约主体与特别声明<br>
&nbsp; &nbsp;&nbsp; &nbsp;1.1 91九马众筹平台（以下简称“本平台”）是由杭州玖壹玖马网络科技有限公司开发、运营的网络平台，为保护支持者的合法权益，规范发起人的行为，维护本平台的秩序，特拟定《91九马众筹用户注册服务协议》（以下简称“本协议”）。<br>
&nbsp; &nbsp;&nbsp; &nbsp;1.2本协议的双方是本平台的注册用户与91九马众筹平台，在您注册成为本平台的用户之前，请仔细阅读并充分理解本协议条款。如果您同意注册并使用本平台提供的服务，视您已经认真阅读、理解并完全接受了本协议的全部内容，本协议即视您与本平台之间发生法律效力，包括但不限于本协议及所有平台已发布的或将来可能发布的各类规则、操作流程等。<br>
&nbsp; &nbsp;&nbsp; &nbsp;1.3 您应是具有完全民事权利能力和民事行为能力的自然人，或依法设立并有效存续的单位（包括企业法人及其他组织）。<br>
&nbsp; &nbsp;&nbsp; &nbsp;1.4本平台有权随时修改本协议文本中的任何条款，一旦本平台对本协议进行修改，平台会以公告的形式发布通知。任何此类修改自发布之日起生效，如果用户在此类修改发布后继续使用本平台服务，则表示该用户同意遵守本协议所作出的修改。<br>
&nbsp; &nbsp;&nbsp; &nbsp;1.5如您不能按照本协议的约定，包括但不限于不能接受修订后的协议及各类规则，则应立即停止使用本平台提供的服务。<br></p>
第二条遵守法律<br>
&nbsp; &nbsp;&nbsp; &nbsp;2.1 当使用本平台服务时，用户同意遵守中华人民共和国相关法律法规，包括但不限于《中华人民共和国宪法》、《中华人民共和国合同法》、《中华人民共和国电信条例》、《互联网信息服务管理办法》、《互联网电子公告服务管理规定》、《中华人民共和国保守国家秘密法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国计算机信息系统安全保护条例》、《计算机信息网络国际联网安全保护管理办法》、《中华人民共和国著作权法》及其实施条例、《互联网著作权法行政保护办法》等。用户只有在同意遵守所有相关法律法规和本协议时，才有权使用本平台服务。<br>
第三条 用户账号和使用规范<br>
&nbsp; &nbsp;&nbsp; &nbsp;3.1 用户注册时应按本平台注册页面提示填写真实、准确、有效的信息，不得侵害他人的利益，否则自行承担由此引起的全部责任及后果，平台保留终止其使用各项服务的权利。完成注册程序后，即成为注册用户，有权享有平台提供的服务。<br>
&nbsp; &nbsp;&nbsp; &nbsp;3.2 用户不应该将其账号、密码转让、出借或告知他人，供他人使用。如用户发现账号遭他人非法使用，应立即通知本平台，以避免造成可能的损失。<br>
&nbsp; &nbsp;&nbsp; &nbsp;3.3 本平台为更好地保护您的合法权益并向您提供优质、高效的服务，本平台可能将您的信息应用在以下方面：<br>
（1）在您登录本平台时进行必要的身份验证；<br>
（2）根据您的浏览记录及相关信息，向您推荐您可能感兴趣的众筹项目资料；<br>
（3）针对您通过本平台提出的任何问题及时予以答复，并提供必要的协助；<br>
（4）分析本平台的用户需求及使用情况，以为您提供更优质的服务；<br>
（5）在奖励式众筹项目完成众筹之后，将项目支持者的姓名、用户名、联系方式和联系地址发送给项目发起人，以便项目发起人兑现对项目支持者的回报；<br>
（6）本平台提供的其他相关服务，比如以短信和邮箱的形式向您发送本平台的相关通知和公告。<br>
&nbsp; &nbsp;&nbsp; &nbsp;3.4 当您使用本平台服务时，必须遵守中华人民共和国相关法律法规的规定，用户保证不会利用本平台进行任何违法或不正当的活动，包括但不限于下列行为：<br>
（1）违反本协议的规定；<br>
（2）冒用他人名义使用本服务；<br>
（3）利用本服务侵害他人的合法权益；<br>
（4）从事非法交易；<br>
（5）反对宪法及其他法律的基本原则，危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一；<br>
（6）散布谣言，扰乱社会秩序，破坏社会稳定的；<br>
（7）散步淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br>
（8）含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其他内容；<br>
&nbsp; &nbsp;&nbsp; &nbsp;3.5 用户保证不利用本平台进行如下活动：<br>
（1）未经允许，进入计算机信息网络或者使用计算机信息网络资源；<br>
（2）未经允许，对计算机信息网络功能进行删除、修改或者增加；<br>
（3）未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加；故意制作、传播计算机病毒等破坏性存续，其他危害计算机信息网络安全的行为。<br>
如用户在使用本平台服务时违反任何上述规定，本平台有权要求用户进行改正或直接采取一切必要措施（包括但不限于更改、删除相关内容、暂停或终止相关用户使用本平台服务）以消除该用户的不正当行为。<br>
&nbsp; &nbsp;&nbsp; &nbsp;3.6本平台系统服务因下列状况暂停服务、无法正常运作，使用户无法使用各项服务时，对此造成的一切不便与损失，平台不承担损害赔偿责任，该状况包括但不限于：<br>
（1）本平台公告系统停机维护期间；<br>
（2）电信设备出现故障不能进行数据传输；<br>
（3）因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力事件，导致平台系统障碍不能正常为您提供服务；<br>
（4）由于黑客攻击、电力系统问题、电信部门技术调整等其他方非因平台自身所能控制原因而造成的服务中断或者延迟；<br>
&nbsp; &nbsp;&nbsp; &nbsp;如因上述原因或其他平台无法控制的原因，使平台运营系统崩溃或无法正常使用，导致网上交易或其他服务无法完成、或丢失有关的信息、记录等，平台将本着合理止损的原则协助用户处理相关事宜。<br>
第四条知识产权<br>
&nbsp; &nbsp;&nbsp; &nbsp;4.1注册会员在本平台的上传行为代表着注册会员对上传的信息享有永久使用权和收益权，且注册会员保有上传信息的所属权。<br>
&nbsp; &nbsp;&nbsp; &nbsp;4.2注册会员有义务确保其发布的信息不侵犯任何第三方知识产权及其他权利，否则由此给第三方或本平台造成的损失将由注册会员承担。<br>
<br>
第五条 隐私权保护<br>
&nbsp; &nbsp;&nbsp; &nbsp;5.1 当您在本平台注册并参与平台互动项目时，平台服务器将记录您的信息与操作，请您予以接受并充分理解。<br>
&nbsp; &nbsp;&nbsp; &nbsp;5.2 本平台不会将您的个人信息和资料予以泄露，但是根据下列情况，平台有权全部或部分披露您的个人信息： <br>
（1）根据法律、法规、行政规章规定，或应行政机关、司法机关要求，披露或者使用您的个人信息； <br>
（2）如您为权利人并针对他人在本平台上侵犯您利益的行为提起投诉，平台为更好解决您的诉求，披露或使用您的个人信息； <br>
（3）如您为投资人或者活动参与人，应项目方要求提供您的身份信息； <br>
（4）权利人认为您在本平台上的行为侵犯其合法权利并提出投诉的，可向权利人披露； <br>
（5）您出现违反本平台网站规则，需要向第三方披露的； <br>
（6）根据本平台网站公示规则，需要披露的。<br>
第六条 发起者和支持者之间的合同关系<br>
 &nbsp; &nbsp;&nbsp; &nbsp;  6.1 91九马众筹为众筹项目提供融资平台。当发起者发起众筹项目，支持者付款支持后，发起者与支持者之间就形成了合同关系：支持者接受发起者的提议，并形成合同。<br>
  &nbsp; &nbsp;&nbsp; &nbsp; 6.2  91九马众筹并不是这个合同的一部分。合同只有双方，发起者和支持者。但这份合同包括以下定式条款：<br>
（1）当一个项目众筹成功后，发起者必须完成项目，并按承诺将实物回报给支持者。一旦发起者完成了这些任务，即可视为他履行了对支持者的义务。<br>
（2）项目众筹成功后，发起者对支持者承担如下责任：为完成项目的高标准努力与付出、诚实的沟通。<br>
（3）支持者必须明白，支持一个项目，是在帮助创造崭新的事物，而不是订购已经存在的东西。这个过程中会有变化、延迟、甚至可能发生一些不可预知的事情，让发起者无法完成他们的项目。<br>
  &nbsp; &nbsp;&nbsp; &nbsp; 6.3如果一个发起者无法完成他的项目或是兑现他承诺的回报，他们将被视为未能履行该合同的基本条款。此时，发起者必须对支持者进行补救：<br>
（1）发布一个更新声明，解释项目已经完结，资金如何使用，以及是什么阻止他们完成这个项目；<br>
（2）尽最大的努力在指定的时间内完成项目，并和支持者进行沟通；<br>
（3）项目发起时的描述是诚实的，没有任何虚假的宣传或实物展示；<br>
（4）能够证明自己的资金使用合理，采用了每个合理的步骤去完成项目，让资金使用透明化；<br>
  &nbsp; &nbsp;&nbsp; &nbsp; 发起者是履行承诺的负责人。如果他们不能完成本协议的条款，支持者可针对他们采取法律救助。<br>
第7条 免责声明<br>
（1）本平台不提供退款或类似的保证。完成项目的责任在于项目的发起者，本平台不是这些发起者的代表，它不能保证发起者的工作进度，也不能为发起者提供担保。<br>
（2）本平台不承担任何赔偿义务且不参与评判用户之间的争端，或用户和任何第三方服务之间的争端。本平台不负责监督项目是否准时或回报的性能。当你使用本平台的服务后，你就放弃了对本平台以任何方式索赔的权利。<br>
（3）本平台明确声明，本平台不提供任何资金担保，无侵权的保证或其他适用于特殊用途的保证，或众筹过程中任何行为的保证。本平台向你提供的任何建议或信息（口头或书面）均不构成保证。<br>
第8条 赔偿<br>
&nbsp; &nbsp;&nbsp; &nbsp;如果你的行为让我们被起诉，或者违反任何在本协议中你做出的承诺，你必须帮助我们进行辩护、赔偿，并让我们免于因为你使用本平台或错误使用本平台造成的任何索赔或债务。本平台保留权利，依据此条款，你会和本平台合作，帮助本平台进行辩护。<br>
其他<br>
&nbsp; &nbsp;&nbsp; &nbsp;这就是你和本平台之间的完整的协议。它是唯一处理你和本平台之间服务关系的依据。<br>
如果该协议发生修改，本平台有义务通过电子邮件或其他联系方式通知你，或在平台显著位置发布通知。<br><br><br><br><br><br>

</div>
  <div id="con_one_4" >
    <div align=center> <h2>原则与机制</h2></div><br><br>
     &nbsp; &nbsp; &nbsp; &nbsp;投资人对项目方和平台的信任与支持是我们最宝贵的财富，所以为了更加高效而顺利地完成整个众筹过程，我们必须遵循一些最基本的原则，平台也会尽最大努力为项目方及支持者提供整套安全、透明、高效的运作机制，来保障众筹活动中各方的基本权益。<br><br><b>我们的原则</b><br><br>信息真实原则<br>&nbsp; &nbsp; &nbsp; &nbsp;普通用户与项目发起人应遵循信息的真实性原则，所填写与发布的信息应尽可能详尽、具体和准确。<br>
自愿共赢原则<br>     
&nbsp; &nbsp; &nbsp; &nbsp;投资人在平台所做的投资属于个人意愿，平台承担部分众筹时期的风险控制功能，但项目的经营管理结果，平台不负最终责任，项目发起方作为融资者，需要更大的耐心与责任，积极沟通，并主动披露运营结果，按时发放约定回报等，以获得投资者的信任。<br>
风险共担原则<br>
&nbsp; &nbsp; &nbsp; &nbsp;从投资人实际支持项目开始，投资人和项目发起人就已经成了项目的共同经营者，不仅利益共享，同时风险也共担<br><br>
<b>保障机制</b><br><br>
身份认证体系<br>
&nbsp; &nbsp; &nbsp; &nbsp;平台建立手机认证、实名认证、银行卡认证等全方位认证体系，且资金只能转出到已经通过本人实名认证的绑定银行账户上，确保资金万无一失。<br>
风险控制管理<br>
&nbsp; &nbsp; &nbsp; &nbsp;对每一个投递发起的项目都进行严格的审核，审查相应的资质，预防风险。并且建立完善的内部管理机制，通过专业的风险管理团队，将项目前期风险降至最低。<br>
数据安全保障<br>
&nbsp; &nbsp; &nbsp; &nbsp;使用阿里云服务，实时同步系统到阿里云的各个备份节点，每份数据具有多个副本，保证数据绝对安全、可靠。<br>
资金安全管理<br>
&nbsp; &nbsp; &nbsp; &nbsp;严格审核控制资金流转的各个环节，落实资金流转安全规范，确保每一个环节都有双岗位来执行和监督。<br>
  </div> 
 
 </div>

</body>
</html>



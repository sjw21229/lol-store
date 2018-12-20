<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>资讯首页</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<style type="text/css">
    #div1{
        float: left;
    }
    .clean{
        clear: both;
    }
    #div2{
        float: left;
    }
    #div3{
        float: left;
    }
</style>
<body>
<div>
    <div style="float: right">
        <a href="/lol/listProduct" style="font-size: 16px">《返回</a>
    </div>
    <div>
        <div style="font-size: x-large;margin-left: 100px;margin-top: 20px">2018冰雪节：冬境乐园活动开启</div>
        <div style="margin-left: 100px;margin-top: 100px">冰雪仙境再临峡谷!响应魄罗之王的召唤，与万花通灵 妮蔻一同探索冬境大地，结识美丽的冬境仙灵和手持胡萝卜的雪人，拯救冰封的王子，一同击败邪恶的冰王!</div>

        <div style="margin-left: 100px;margin-top: 40px">在冬境乐园活动中，召唤师可以通过完成冰雪节任务，获取冰雪币，兑换包含K/DA 阿卡丽 至臻皮肤、冰雪主题皮肤炫金炫彩、2018冰雪节皮肤边框、珍稀图标、表情、守卫皮肤和冰雪节2018魔法引擎。</div>

            <div style="margin-left: 100px;margin-top: 40px">购买冬境乐园门票，立即获得专属图标、150冰雪币和1个冰雪节2018魔法引擎，可开启冰雪乐园每日首胜任务，每日完成任务可获得20冰雪币。还可通过召唤师峡谷、大乱斗或极限闪击等PVP模式快速获取冰雪币。</div>

                <div style="margin-left: 100px;margin-top: 40px">如未购买冬境乐园门票，通过每局PVP模式游戏获得的冰雪币将会暂时存放于冰雪币贮藏，购买门票后即可解锁使用，但是错过的每日首胜任务奖励将无法再获取。</div>

                    <div style="margin-left: 100px;margin-top: 40px">通过购买冰雪节2018魔法引擎同样可获赠大量冰雪币(详见FAQ)。</div>

                        <div style="margin-left: 100px;margin-top: 40px">活动时间：2018年12月11日12:00~2019年1月13日23:59</div>

                            <div style="margin-left: 100px;margin-top: 40px">兑换截止时间：2019年1月31日10:00</div>
    </div>
    <div style="font-size: x-large;margin-left: 100px;margin-top: 50px">商城兑换包含:</div>
    <div style="width:1000px;margin:0 auto;">
    <div style="font-size: 30px">最新上架</div>
    <c:forEach items="${news }" var="n" varStatus="vs">
        <div id="div1" style="width:200px;margin-left:40px;margin-top:40px;">
            <div style="align-content: center">
                <img src="img/new.png" width="60px" height="60px">
                <img src="img/${n.pimage}" width="160px" height="160px">
            </div>
            <div style="color: #d43f3a;font-size:large">${n.price}</div>
        </div>
    </c:forEach>
    <div class="clean"></div>
</div>
    <div style="width:1000px;margin:0 auto;">
        <div style="font-size: 30px">即将下架</div>
        <c:forEach items="${news1 }" var="n" varStatus="vs">
        <div id="div2" style="width:200px;margin-left:40px;margin-top:40px;">
            <div style="align-content: center"><img src="img/${n.pimage}" width="160px" height="160px">
                <img src="img/pending.png" width="60px" height="60px">
            </div>
            <div style="color: #d43f3a;font-size:large">${n.price}</div>
        </div>
        </c:forEach>
        <div class="clean"></div>
    </div>
    <div style="width:1000px;margin:0 auto;">
        <div style="font-size: 30px">已经下架</div>
        <c:forEach items="${news2 }" var="n" varStatus="vs">
            <div id="div3" style="width:200px;margin-left:40px;margin-top:40px;">
                <div style="align-content: center">
                    <img src="img/vip.png" width="60px" height="60px">
                    <img src="img/${n.pimage}" width="160px" height="160px">
                    <img src="img/out.png" width="60px" height="60px">
                </div>
                <div style="color: #d43f3a;font-size:large">${n.price}</div>
            </div>
        </c:forEach>
        <div class="clean"></div>
    </div>
    <div>
        <div style="margin-left: 100px;margin-top: 50px;font-size: medium">关注更多资讯请扫官方二维码</div>
        <div style="width:1000px;margin:0 auto;">
            <div style="float: left;margin-left: 100px">
                <div style="align-content: center">
                    <img src="img/zm.jpg" width="120px" height="120px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="img/wb.jpg" width="120px" height="120px">
                </div>
            </div>
        </div>
        <div style="float: right;margin-top: 60px">
            <!-- <div class="foot_top"> any HTML code </div> -->
            <a onclick="pgvSendClick({hottag:'v3.foot.ieg.link'})" target="_blank" href="//ieg.tencent.com/" title="腾讯互动娱乐" class="foot_ieg_logo">腾讯互动娱乐</a>
            <a onclick="pgvSendClick({hottag:'v3.foot.riot.link'})" target="_blank" href="javascript:" title="RIOT" class="foot_left logo-riot">riot</a>
            <p class="copyright_txt">COPYRIGHT &copy; 2012 Riot Games,Inc. ALL RIGHTS RESERVED.</p>
            <p>全国文化市场统一举报电话：12318</p>
            <!-- <p class="copyright_txt">COPYRIGHT &?Smilegate Entertainment. All rights reserved.</p>-->
            <!-- <div  class="foot_bottom"> any HTML code </div> -->
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>

0 */1 * * * git -C /scripts/ pull |ts >> /scripts/logs/pull.log 2>&1
2 */1 * * * crontab /scripts/docker/${CRONTAB_LIST_FILE}
3 */1 * * * npm install --prefix /scripts |ts >> /scripts/logs/npm_install.log 2>&1
# 每3天的23:50分清理一次日志
50 23 */3 * * rm -rf /scripts/logs/*.log


##############短期活动##############
# 暂无


##############长期活动##############

# 签到
0 0,12,18 * * * node /scripts/jd_bean_sign.js |ts >> /scripts/logs/jd_bean_sign.log 2>&1
# 京小超兑换奖品
#0 0 * * * node /scripts/jd_blueCoin.js |ts >> /scripts/logs/jd_blueCoin.log 2>&1
# 摇京豆
#0 0 * * * node /scripts/jd_club_lottery.js |ts >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js |ts >> /scripts/logs/jd_fruit.log 2>&1
# 宠汪汪
#15 */2 * * * node /scripts/jd_joy.js |ts >> /scripts/logs/jd_joy.log 2>&1
# 宠汪汪喂食
#15 */1 * * * node /scripts/jd_joy_feedPets.js |ts >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪积分兑换奖品
#0 0-16/8 * * * node /scripts/jd_joy_reward.js |ts >> /scripts/logs/jd_joy_reward.log 2>&1
# 宠汪汪偷好友积分与狗粮
#0 0,6 * * * node /scripts/jd_joy_steal.js |ts >> /scripts/logs/jd_joy_steal.log 2>&1
# 摇钱树
#0 */2 * * * node /scripts/jd_moneyTree.js |ts >> /scripts/logs/jd_moneyTree.log 2>&1
# 东东萌宠
5 6-18/6 * * * node /scripts/jd_pet.js |ts >> /scripts/logs/jd_pet.log 2>&1
# 京东种豆得豆
0 7-22/1 * * * node /scripts/jd_plantBean.js |ts >> /scripts/logs/jd_plantBean.log 2>&1
# 京东全民开红包
1 1 * * * node /scripts/jd_redPacket.js |ts >> /scripts/logs/jd_redPacket.log 2>&1
# 进店领豆
#10 0 * * * node /scripts/jd_shop.js |ts >> /scripts/logs/jd_shop.log 2>&1
# 京东天天加速
#8 */3 * * * node /scripts/jd_speed.js |ts >> /scripts/logs/jd_speed.log 2>&1
# 东东超市
11 1-23/5 * * * node /scripts/jd_superMarket.js |ts >> /scripts/logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
55 23 * * * node /scripts/jd_unsubscribe.js |ts >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京豆变动通知
0 2 * * * node /scripts/jd_bean_change.js |ts >> /scripts/logs/jd_bean_change.log 2>&1
# 京东抽奖机
#11 1 * * * node /scripts/jd_lotteryMachine.js |ts >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
#11 9 * * * node /scripts/jd_rankingList.js |ts >> /scripts/logs/jd_rankingList.log 2>&1
# 天天提鹅
#18 */3 * * * node /scripts/jd_daily_egg.js |ts >> /scripts/logs/jd_daily_egg.log 2>&1
# 金融养猪
12 13 * * * node /scripts/jd_pigPet.js |ts >> /scripts/logs/jd_pigPet.log 2>&1

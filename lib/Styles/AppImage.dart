import 'dart:math';

import 'package:flutter/material.dart';

class AppImage {
  static final google_logo = "assets/common/google_logo.png";
  static final bucketurl = "https://storage.googleapis.com/gmapp/";
  static final String dartsvg = "assets/svg/dart.svg";
  static final String logosvg = "assets/svg/flutter_logo.svg";
  static final Images = [
    newZealandImage,
    AppImage.parisImage,
    AppImage.auroraImage,
    AppImage.berlinImage,
    AppImage.amsterdamImage
  ];
  static final String newZealandImage =
      'https://images.unsplash.com/photo-1492531622965-b556ff0402df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
  static final String parisImage =
      'https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1307&q=80';
  static final String auroraImage =
      'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

  static final String berlinImage =
      'https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
  static final String amsterdamImage =
      'https://images.unsplash.com/photo-1524047934617-cb782c24e5f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

  static final String gmApp_wechat = "assets/gm/001-wechat.png";
  static final String gmApp_facebook = "assets/gm/002-facebook.png";
  static final String gmApp_search = "assets/gm/003-search.png";
  static final String gmApp_chat2 = "assets/gm/chat2.png";
  static final String gmApp_Filter = "assets/gm/Filter.png";
  static final String gmApp_Filter_white = "assets/gm/Filter_white.png";
  static final String gmApp_Group = "assets/gm/Group.png";
  static final String gmApp_logo = "assets/gm/logo.png";
  static final String gmApp_nav_chat = "assets/gm/nav_chat.png";
  static final String gmApp_nav_chat_active = "assets/gm/nav_chat_active.png";
  static final String gmApp_nav_home = "assets/gm/nav_home.png";
  static final String gmApp_nav_home_active = "assets/gm/nav_home_active.png";
  static final String gmApp_nav_market = "assets/gm/nav_market.png";
  static final String gmApp_nav_market_active =
      "assets/gm/nav_market_active.png";
  static final String gmApp_nav_profile = "assets/gm/nav_profile.png";
  static final String gmApp_nav_profile_active =
      "assets/gm/nav_profile_active.png";
  static final String gmApp_Star_grey = "assets/gm/Star_grey.png";
  static final String gmApp_Star_yellow = "assets/gm/Star_yellow.png";
  static final String gmAppLogo = "assets/gmapp/splashlogo.png";

  static final NetworkImage profileImage = NetworkImage(
      'https://static1.squarespace.com/static/55f45174e4b0fb5d95b07f39/t/5aec4511aa4a991e53e6c044/1525433627644/Alexandra+Agoston+archives.jpg?format=1000w');

  static final String EmmWatson = "assets/profile/emma-watson.jpg";

  static final String applogo = 'assets/home/Logo.png';
  static final String landingbank = 'assets/landing/banks.png';

  static final String landinghotel = 'assets/landing/hotels.png';
  static final String landingkey = 'assets/landing/key.png';
  static final String landingshoppingcart = 'assets/landing/shopping_cart.png';
  static final String landingstores = 'assets/landing/stores.png';
  static final String landingwallet = 'assets/landing/wallet.png';
  static final String twoviewimagtes =
      'assets/images/flutter-mark-square-64.png';
  static final String uncoverbackground =
      'assets/uncover/background_uncover.png';

  static final String uncover_evolution_card =
      'assets/uncover/uncover_evolution_card.png';

  static final String uncover_title = 'assets/uncover/title.png';
  static final String uncover_orgin_card =
      'assets/uncover/uncover_origin_card.png';
  static final String uncover_tecnique_card =
      'assets/uncover/uncover_tecnique_card.png';
  static final String uncover_trivia_Card =
      'assets/uncover/uncover_trivia_card.png';

  static final String portfolio1 = 'assets/images/portfolio_1.jpeg';
  static final String portfolio2 = 'assets/images/portfolio_2.jpeg';
  static final String portfolio3 = 'assets/images/portfolio_3.jpeg';
  static final String portfolio4 = 'assets/images/portfolio_4.jpeg';
  static final String portfolio5 = 'assets/images/portfolio_5.jpeg';
  static final String portfolio6 = 'assets/images/portfolio_6.jpeg';

  static final String artist_avatar = 'assets/artistscreen/avatar.png';

  static final String artist_backdrop = 'assets/artistscreen/backdrop.png';
  static final String artist_video1_thumb =
      'assets/artistscreen/video1_thumb.png';
  static final String artist_video4_thumb =
      'assets/artistscreen/video4_thumb.png';
  static final String artist_video3_thumb =
      'assets/artistscreen/video3_thumb.png';
  static final String artist_video2_thumb =
      'assets/artistscreen/video2_thumb.png';

  static final String ic_cloudy = "assets/weather/ic_cloudy.png";
  static final String ic_rain = "assets/weather/ic_rain.png";
  static final String ic_sunny = "assets/weather/ic_sunny.png";
  static final String ic_weather_bk = "assets/weather/weather-bk.png";
  static final String weather_bk_enlarged =
      "assets/weather/weather-bk_enlarged.png";
  static final String weatherspritesjson = "assets/weather/weathersprites.json";
  static final String weathersprites = "assets/weather/weathersprites.png";

  static final String board_walk = "assets/flipcarousel/board_walk.jpg";
  static final String dusk_waves = "assets/flipcarousel/dusk_waves.jpg";
  static final String van_on_beach = "assets/flipcarousel/van_on_beach.jpg";

  //Zoom menu Screen
  static final String dark_grunge_bk = "assets/hiddenmenu/dark_grunge_bk.jpg";
  static final String egggs_in_skillet =
      "assets/hiddenmenu/eggs_in_skillet.jpg";
  static final String other_screen_bk = "assets/hiddenmenu/other_screen_bk.jpg";
  static final String spoons_of_spices =
      "assets/hiddenmenu/spoons_of_spices.jpg";
  static final String other_screen_card_photot =
      "assets/hiddenmenu/other_screen_card_photo.jpg";
  static final String steak_on_cooktop =
      "assets/hiddenmenu/steak_on_cooktop.jpg";
  static final String wood_bk = "assets/hiddenmenu/wood_bk.jpg";

  static final String tinderPhoto1 = "assets/tinder/photo_1.jpg";
  static final String tinderPhoto2 = "assets/tinder/photo_2.jpg";
  static final String tinderPhoto3 = "assets/tinder/photo_3.jpg";
  static final String tinderPhoto4 = "assets/tinder/photo_4.jpg";

  static final String materialbanks = "assets/materialpage/banks.png";
  static final String materialhotels = "assets/materialpage/hotels.png";
  static final String materialKey_old = "assets/materialpage/key.old.png";
  static final String materialKey = "assets/materialpage/key.png";
  static final String materialProblemstatement =
      "assets/materialpage/problemstatment.png";
  static final String materialShoppingCartOld =
      "assets/materialpage/shopping_cart.old.png";
  static final String materialShoppingCart =
      "assets/materialpage/shopping_cart.png";
  static final String materialStores = "assets/materialpage/stores.png";
  static final String materialWalletOld = "assets/materialpage/wallet.old.png";
  static final String materialWallet = "assets/materialpage/wallet.png";

  static final String coffee_bottom_clip_points =
      "assets/WavePath/coffee_bottom_clip_points.png";

  static final String coffe_header = "assets/WavePath/coffee_header.jpeg";

  static final String beer_cider = "assets/Beer/cider.png";
  static final String beer_copper = "assets/Beer/copper.png";
  static final String beer_deception = "assets/Beer/deception.png";
  static final String beer_luxe = "assets/Beer/luxe.png";
  static final String beer_maximus = "assets/Beer/maximus.png";
  static final String beer_pilsnah = "assets/Beer/pilsnah.png";
  static final String beer_porternoir = "assets/Beer/porternoir.png";
  static final String beer_session = "assets/Beer/session.png";
  static final String beer_statesman = "assets/Beer/statesman.png";
  static final String beer_stuntman = "assets/Beer/stuntman.png";

  static final String planet_earth = "assets/planet/earth.png";
  static final String planet_ic_distance = "assets/planet/ic_distance.png";
  static final String planet_ic_gravity = "assets/planet/ic_gravity.png";
  static final String planet_ic_mars = "assets/planet/mars.png";
  static final String planet_ic_mercury = "assets/planet/mercury.png";
  static final String planet_ic_moon = "assets/planet/moon.png";
  static final String planet_ic_neptune = "assets/planet/neptune.png";

  static final String travelscreen_beach1 = "assets/travelscreen/beach1.jpg";
  static final String travelscreen_beach2 = "assets/travelscreen/beach2.jpg";
  static final String travelscreen_beach3 = "assets/travelscreen/beach3.jpg";
  static final String travelscreen_chatbubble =
      "assets/travelscreen/chatbubble.png";
  static final String travelscreen_chris = "assets/travelscreen/chris.jpg";
  static final String travelscreen_fav = "assets/travelscreen/fav.png";
  static final String travelscreen_narrow = "assets/travelscreen/navarrow.png";
  static final String travelscreen_speechbubble =
      "assets/travelscreen/speechbubble.png";

  static final String login_logotwo = "assets/login/logotwo.png";

  static final String flags_tg = "assets/flags/tg.png";
  static final String flag_me = "assets/flags/me.png";
  static final String flag_la = "assets/flags/la.png";
  static final String flag_mr = "assets/flags/mr.png";
  static final String flag_ni = "assets/flags/ni.png";
  static final String flag_lv = "assets/flags/lv.png";
  static final String flag_om = "assets/flags/om.png";
  static final String flag_af = "assets/flags/af.png";
  static final String flag_cy = "assets/flags/cy.png";
  static final String flag_bj = "assets/flags/bj.png";
  static final String flag_aq = "assets/flags/aq.png";
  static final String flag_cn = "assets/flags/cn.png";
  static final String flag_gb_sct = "assets/flags/gb-sct.png";
  static final String flag_co = "assets/flags/co.png";
  static final String flag_cx = "assets/flags/cx.png";
  static final String flag_ag = "assets/flags/ag.png";
  static final String flag_ms = "assets/flags/ms.png";
  static final String flag_md = "assets/flags/md.png";
  static final String flag_zm = "assets/flags/zm.png";
  static final String flag_vn = "assets/flags/vn.png";
  static final String flag_tf = "assets/flags/tf.png";
  static final String flag_td = "assets/flags/td.png";
  static final String flag_tyt = "assets/flags/yt.png";
  static final String flag_lb = "assets/flags/lb.png";
  static final String flag_mf = "assets/flags/mf.png";
  static final String flag_lu = "assets/flags/lu.png";
  static final String flag_mq = "assets/flags/mq.png";
  static final String flag_cz = "assets/flags/cz.png";
  static final String flag_ae = "assets/flags/ae.png";
  static final String flag_cm = "assets/flags/cm.png";
  static final String flag_bi = "assets/flags/bi.png";
  static final String flag_ar = "assets/flags/ar.png";
  static final String flag_as = "assets/flags/as.png";
  static final String flag_bh = "assets/flags/bh.png";
  static final String flag_cl = "assets/flags/cl.png";
  static final String flag_ad = "assets/flags/ad.png";
  static final String flag_mp = "assets/flags/mp.png";
  static final String flag_lt = "assets/flags/lt.png";
  static final String flag_mg = "assets/flags/mg.png";
  static final String flag_lc = "assets/flags/lc.png";
  static final String flag_tr = "assets/flags/tr.png";
  static final String flag_ua = "assets/flags/ua.png";
  static final String flag_tv = "assets/flags/tv.png";
  static final String flag_vi = "assets/flags/vi.png";
  static final String flag_mt = "assets/flags/mt.png";
  static final String flag_no = "assets/flags/no.png";
  static final String flag_mc = "assets/flags/mc.png";
  static final String flag_ch = "assets/flags/ch.png";
  static final String flag_bl = "assets/flags/bl.png";
  static final String flag_aw = "assets/flags/aw.png";
  static final String flag_bz = "assets/flags/bz.png";
  static final String flag_bm = "assets/flags/bm.png";
  static final String flag_ci = "assets/flags/ci.png";
  static final String flag_mu = "assets/flags/mu.png";
  static final String flag_us = "assets/flags/us.png";
  static final String flag_tq = "assets/flags/tw.png";
  static final String flag_ye = "assets/flags/ye.png";
  static final String flag_mw = "assets/flags/mw.png";
  static final String flag_nl = "assets/flags/nl.png";
  static final String flag_ls = "assets/flags/ls.png";
  static final String flag_bo = "assets/flags/bo.png";
  static final String flag_at = "assets/flags/at.png";
  static final String flag_ck = "assets/flags/ck.png";
  static final String flag_by = "assets/flags/by.png";
  static final String flag_au = "assets/flags/au.png";
  static final String flag_bn = "assets/flags/bn.png";
  static final String flag_ma = "assets/flags/ma.png";
  static final String flag_na = "assets/flags/nz.png";
  static final String flag_lr = "assets/flags/lr.png";
  static final String flag_mv = "assets/flags/mv.png";
  static final String flag_tc = "assets/flags/tc.png";
  static final String flag_ug = "assets/flags/ug.png";
  static final String flag_tt = "assets/flags/tt.png";
  static final String flag_pl = "assets/flags/pl.png";
  static final String flag_rs = "assets/flags/rs.png";
  static final String flag_in = "assets/flags/in.png";
  static final String flag_ge = "assets/flags/ge.png";
  static final String flag_gr = "assets/flags/gr.png";
  static final String flag_gs = "assets/flags/gs.png";
  static final String flag_gd = "assets/flags/gd.png";
  static final String flag_io = "assets/flags/io.png";
  static final String flag_hk = "assets/flags/hk.png";
  static final String flag_kp = "assets/flags/kp.png";
  static final String flag_gb = "assets/flags/gb-nir.png";
  static final String flag_kg = "assets/flags/kg.png";
  static final String flag_pm = "assets/flags/pm.png";
  static final String flag_sv = "assets/flags/sv.png";
  static final String flag_re = "assets/flags/re.png";
  static final String flag_sa = "assets/flags/sa.png";
  static final String flag_sc = "assets/flags/sc.png";
  static final String flag_st = "assets/flags/st.png";
  static final String flag_ke = "assets/flags/ke.png";
  static final String flag_im = "assets/flags/im.png";
  static final String flag_kr = "assets/flags/kr.png";
  static final String flag_gf = "assets/flags/gf.png";
  static final String flag_dj = "assets/flags/dj.png";
  static final String flag_gq = "assets/flags/gq.png";
  static final String flag_gp = "assets/flags/gp.png";
  static final String flag_dk = "assets/flags/dk.png";
  static final String flag_gg = "assets/flags/gg.png";
  static final String flag_il = "assets/flags/il.png";
  static final String flag_pn = "assets/flags/pn.png";
  static final String flag_sb = "assets/flags/sb.png";
  static final String flag_py = "assets/flags/py.png";
  static final String flag_ru = "assets/flags/ru.png";
  static final String flag_kw = "assets/flags/kw.png";
  static final String flag_do = "assets/flags/do.png";
  static final String flag_gt = "assets/flags/gt.png";
  static final String flag_gb2 = "assets/flags/gb.png";
  static final String flag_gu = "assets/flags/gu.png";
  static final String flag_je = "assets/flags/je.png";
  static final String flag_hm = "assets/flags/hm.png";
  static final String flag_sg = "assets/flags/sg.png";
  static final String flag_pk = "assets/flags/pk.png";
  static final String flag_sr = "assets/flags/sr.png";
  static final String flag_se = "assets/flags/se.png";
  static final String flag_jp = "assets/flags/jp.png";
  static final String flag_gw = "assets/flags/gw.png";
  static final String flag_eh = "assets/flags/eh.png";
  static final String flag_dz = "assets/flags/dz.png";
  static final String flag_ga = "assets/flags/ga.png";
  static final String flag_fr = "assets/flags/fr.png";
  static final String flag_dm = "assets/flags/dm.png";
  static final String flag_hn = "assets/flags/hn.png";
  static final String flag_sd = "assets/flags/sd.png";
  static final String flag_rw = "assets/flags/rw.png";
  static final String flag_ph = "assets/flags/ph.png";
  static final String flag_ss = "assets/flags/ss.png";
  static final String flag_qa = "assets/flags/qa.png";
  static final String flag_pe = "assets/flags/pe.png";
  static final String flag_pr = "assets/flags/pr.png";
  static final String flag_si = "assets/flags/si.png";
  static final String flag_ht = "assets/flags/ht.png";
  static final String flag_es = "assets/flags/es.png";
  static final String flag_gl = "assets/flags/gl.png";
  static final String flag_gm = "assets/flags/gm.png";
  static final String flag_er = "assets/flags/er.png";
  static final String flag_fi = "assets/flags/fi.png";
  static final String flag_ee = "assets/flags/ee.png";
  static final String flag_kn = "assets/flags/kn.png";
  static final String flag_hu = "assets/flags/hu.png";
  static final String flag_iq = "assets/flags/iq.png";
  static final String flag_ky = "assets/flags/ky.png";
  static final String flag_sh = "assets/flags/sh.png";
  static final String flag_ps = "assets/flags/ps.png";
  static final String flag_pf = "assets/flags/pf.png";
  static final String flag_sj = "assets/flags/sj.png";
  static final String flag_id = "assets/flags/id.png";
  static final String flag_is = "assets/flags/is.png";
  static final String flag_eg = "assets/flags/eg.png";
  static final String flag_fk = "assets/flags/fk.png";
  static final String flag_fj = "assets/flags/fj.png";
  static final String flag_gn = "assets/flags/gn.png";
  static final String flag_gy = "assets/flags/gy.png";
  static final String flag_ir = "assets/flags/ir.png";
  static final String flag_km = "assets/flags/km.png";
  static final String flag_ie = "assets/flags/ie.png";
  static final String flag_kz = "assets/flags/kz.png";
  static final String flag_ro = "assets/flags/ro.png";
  static final String flag_sk = "assets/flags/sk.png";
  static final String flag_pg = "assets/flags/pg.png";
  static final String flag_pt = "assets/flags/pt.png";
  static final String flag_so = "assets/flags/so.png";
  static final String flag_sx = "assets/flags/sx.png";
  static final String flag_hr = "assets/flags/hr.png";
  static final String flag_ki = "assets/flags/ki.png";
  static final String flag_jm = "assets/flags/jm.png";
  static final String flag_eu = "assets/flags/eu.png";
  static final String flag_ec = "assets/flags/ec.png";
  static final String flag_et = "assets/flags/et.png";
  static final String flag_fo = "assets/flags/fo.png";
  static final String flag_kh = "assets/flags/kh.png";
  static final String flag_sy = "assets/flags/sy.png";
  static final String flag_sn = "assets/flags/sn.png";
  static final String flag_pw = "assets/flags/pw.png";
  static final String flag_sl = "assets/flags/sl.png";
  static final String flag_gb_eng = "assets/flags/gb-eng.png";
  static final String flag_fm = "assets/flags/fm.png";
  static final String flag_gi = "assets/flags/gi.png";
  static final String flag_de = "assets/flags/de.png";
  static final String flag_gh = "assets/flags/gh.png";
  static final String flag_jo = "assets/flags/jo.png";
  static final String flag_it = "assets/flags/it.png";
  static final String flag_pa = "assets/flags/pa.png";
  static final String flag_sz = "assets/flags/sz.png";
  static final String flag_sm = "assets/flags/sm.png";
  static final String flag_tn = "assets/flags/tn.png";
  static final String flag_ml = "assets/flags/ml.png";
  static final String flag_cg = "assets/flags/cg.png";
  static final String flag_ax = "assets/flags/ax.png";
  static final String flag_ao = "assets/flags/ao.png";
  static final String flag_bt = "assets/flags/bt.png";
  static final String flag_bb = "assets/flags/bb.png";
  static final String flag_cf = "assets/flags/cf.png";
  static final String flag_mm = "assets/flags/mm.png";
  static final String flag_li = "assets/flags/li.png";
  static final String flag_naa = "assets/flags/na.png";
  static final String flag_mz = "assets/flags/mz.png";
  static final String flag_to = "assets/flags/to.png";
  static final String flag_vg = "assets/flags/vg.png";
  static final String flag_ve = "assets/flags/ve.png";
  static final String flag_tz = "assets/flags/tz.png";
  static final String flag_tm = "assets/flags/tm.png";
  static final String flag_mx = "assets/flags/mx.png";
  static final String flag_nc = "assets/flags/nc.png";
  static final String flag_mo = "assets/flags/mo.png";
  static final String flag_lk = "assets/flags/lk.png";
  static final String flag_cd = "assets/flags/cd.png";
  static final String flag_al = "assets/flags/al.png";
  static final String flag_bw = "assets/flags/bw.png";
  static final String flag_cr = "assets/flags/cr.png";
  static final String flag_bv = "assets/flags/bv.png";
  static final String flag_am = "assets/flags/am.png";
  static final String flag_az = "assets/flags/az.png";
  static final String flag_ba = "assets/flags/ba.png";
  static final String flag_mn = "assets/flags/mn.png";
  static final String flag_nu = "assets/flags/nu.png";
  static final String flag_my = "assets/flags/my.png";
  static final String flag_tl = "assets/flags/tl.png";
  static final String flag_ws = "assets/flags/ws.png";
  static final String flag_th = "assets/flags/th.png";
  static final String flag_xk = "assets/flags/xk.png";
  static final String flag_nf = "assets/flags/nf.png";
  static final String flag_ly = "assets/flags/ly.png";
  static final String flag_ai = "assets/flags/ai.png";
  static final String flag_br = "assets/flags/br.png";
  static final String flag_cv = "assets/flags/cv.png";
  static final String flag_be = "assets/flags/be.png";
  static final String flag_ca = "assets/flags/ca.png";
  static final String flag_bd = "assets/flags/bd.png";
  static final String flag_cw = "assets/flags/cw.png";
  static final String flag_bs = "assets/flags/bs.png";
  static final String flag_ng = "assets/flags/ng.png";
  static final String flag_mk = "assets/flags/mk.png";
  static final String flag_np = "assets/flags/np.png";
  static final String flag_va = "assets/flags/va.png";
  static final String flag_uz = "assets/flags/uz.png";
  static final String flag_um = "assets/flags/um.png";
  static final String flag_tk = "assets/flags/tk.png";
  static final String flag_vc = "assets/flags/vc.png";
  static final String flag_zw = "assets/flags/zw.png";
  static final String flag_nr = "assets/flags/nr.png";
  static final String flag_ne = "assets/flags/ne.png";
  static final String flag_cu = "assets/flags/cu.png";
  static final String flag_bq = "assets/flags/bq.png";
  static final String flag_bf = "assets/flags/bf.png";
  static final String flag_bg = "assets/flags/bg.png";
  static final String flag_cc = "assets/flags/cc.png";
  static final String flag_gb_wls = "assets/flags/gb-wls.png";
  static final String flag_mh = "assets/flags/mh.png";
  static final String flag_za = "assets/flags/za.png";
  static final String flag_uy = "assets/flags/uy.png";
  static final String flag_wf = "assets/flags/wf.png";
  static final String flag_vu = "assets/flags/vu.png";
  static final String flag_tj = "assets/flags/tj.png";
  static final String flag_an = "assets/flags/an.png";

  static final String converter_area = "assets/converter/icons/area.png";
  static final String converter_currency =
      "assets/converter/icons/currency.png";
  static final String converter_storage =
      "assets/converter/icons/digital_storage.png";
  static final String converter_length = "assets/converter/icons/length.png";
  static final String converter_mass = "assets/converter/icons/mass.png";
  static final String converter_power = "assets/converter/icons/power.png";
  static final String converter_time = "assets/converter/icons/time.png";
  static final String converter_volume = "assets/converter/icons/volume.png";

  static final String food_balanced = "assets/foodreceipt/balanced.jpg";
  static final String food_breakfast = "assets/foodreceipt/breakfast.jpg";
  static final String food_christ = "assets/foodreceipt/chris.jpg";
  static final String food_food = "assets/foodreceipt/food.jpg";
  static final String food_pasta = "assets/foodreceipt/pasta.jpg";
  static final String food_sandswitch = "assets/foodreceipt/sandwich.jpg";
  static final String food_duck = "assets/foodonboarding/duck.jpeg";
  static final String food_glutinous = "assets/foodonboarding/glutinous.png";
  static final String food_bbq = "assets/foodonboarding/bbq.jpg";
  static final String food_sweetsourpork =
      "assets/foodonboarding/sweetsourpork.jpg";

  static final String uikit_blank = "assets/uikit/blank.jpg";
  static final String uikit_dashboard = "assets/uikit/dashboard.jpg";
  static final String uikit_login = "assets/uikit/login.jpg";
  static final String uikit_map = "assets/uikit/map.png";
  static final String uikit_payment = "assets/uikit/payment.jpg";
  static final String uikit_pk = "assets/uikit/pk.jpg";
  static final String uikit_profile = "assets/uikit/profile.jpg";
  static final String uikit_setting = "assets/uikit/setting.jpeg";
  static final String uikit_shopping = "assets/uikit/shopping.jpeg";
  static final String uikit_timeline = "assets/uikit/timeline.jpeg";
  static final String uikit_vertification = "assets/uikit/verification.jpg";
  static final String payment_asmiamiles = "assets/payment/asiamiles.jpg";

  static final String burger_burger1 = "assets/burger/burger1.jpg";
  static final String burger_burger2 = "assets/burger/burger2.jpg";
  static final String burger_burger3 = "assets/burger/burger3.jpg";
  static final String burger_burger4 = "assets/burger/burger4.jpg";

  static final String colorblend_backgroundbg =
      "assets/colorblend/background_bg.jpg";

  static final String login_facebook = "assets/login/facebook.png";

  static final String jobs_twitter = "assets/jobs/twitter.png";
  static final String jobs_website = "assets/jobs/website.png";
  static final String google_signin_button =
      "assets/common/google_signin_button.png";

  static final String google_logo_Sigin = "assets/common/google_logo.png";

  static final String card_Chatbubble = "assets/card/chatbubble.png";
  static final String card_Girl = "assets/card/girl.jpeg";
  static final String card_Girls = "assets/card/girls.jpeg";
  static final String card_Images = "assets/card/images.png";
  static final String card_Simbolo = "assets/card/simbolo.png";

  static final String login_full_boom = "assets/login/full-bloom.png";
  static final String login_mountains1 = "assets/login/mountains.jpeg";
  static final String login_mointains2 = "assets/login/mountains.jpg";

  static final String common_netflix_logo = "assets/common/netflix_log.png";

  static final String facebook_login = "assets/common/facebook_login.png";

  static final String payment_bg_bluecard = "assets/payment/bg_blue_card.png";
  static final String payment_bg_blueCircleCard =
      "assets/payment/bg_blue_circle_card.png";
  static final String payment_bg_purpleCard =
      "assets/payment/bg_purple_card.png";
  static final String payment_bg_redCard = "assets/payment/bg_red_card.png";
  static final String payment_icoAddNew = "assets/payment/ico_add_new.png";
  static final String payment_ico_Delete = "assets/payment/ico_delete_card.png";
  static final String payment_ico_Gift = "assets/payment/ico_gift.png";
  static final String payment_ico_history = "assets/payment/ico_history.png";
  static final String payment_ico_history_selected =
      "assets/payment/ico_history_selected.png";
  static final String payment_ico_home = "assets/payment/ico_home.png";
  static final String payment_icon_home_selected =
      "assets/payment/ico_home_selected.png";
  static final String payment_ico_logo_blue =
      "assets/payment/ico_logo_blue.png";
  static final String payment_ico_logo_red = "assets/payment/ico_logo_red.png";
  static final String payment_ico_pay_broad =
      "assets/payment/ico_pay_broad.png";
  static final String payment_ico_pay_elect =
      "assets/payment/ico_pay_elect.png";
  static final String payment_ico_pay_gas = "assets/payment/ico_pay_gas.png";
  static final String payment_ico_pay_phone =
      "assets/payment/ico_pay_phone.png";
  static final String payment_ico_profiles = "assets/payment/ico_profile.png";
  static final String payment_ico_profiles_selected =
      "assets/payment/ico_profile_selected.png";
  static final String payment_ico_recieve_money =
      "assets/payment/ico_receive_money.png";
  static final String payment_ico_send_money =
      "assets/payment/ico_send_money.png";
  static final String payment_ico_setting = "assets/payment/ico_settings.png";
  static final String payment_ico_setting_selected =
      "assets/payment/ico_settings_selected.png";

  static final String card_flip4 = "assets/cardflip/four.jpg";
  static final String card_flip1 = "assets/cardflip/one.jpg";
  static final String card_flip3 = "assets/cardflip/three.jpg";
  static final String card_flip2 = "assets/cardflip/two.jpg";

  static final String login_logo = "assets/login/login_logo.png";

  static final String book_book1 = "assets/bookapp/book1.gif";
  static final String book_book2 = "assets/bookapp/book2.gif";
  static final String book_book3 = "assets/bookapp/book3.gif";
  static final String book_book4 = "assets/bookapp/book4.gif";
  static final String book_owl = "assets/bookapp/owl.png";

  static final String bg_peopleblackwhite =
      "assets/images/bg_peopleblackwhite.jpg";

  static final String cake_image1 = "assets/cake/img1.jpg";
  static final String cake_image2 = "assets/cake/img2.jpg";
  static final String cake_iamge3 = "assets/cake/img3.jpg";
  static final String cake_image4 = "assets/cake/img4.jpg";
  static final String cake_image5 = "assets/cake/img5.jpg";
  static final String cake_image6 = "assets/cake/img6.jpg";
  static final String cake_image7 = "assets/cake/img7.jpg";

  static final String catimage = "assets/images/cat.png";

  static final String clap_clap = "assets/clapanimation/clap.png";
  static final String clap_sparkes = "assets/clapanimation/sparkles.png";

  static final String drinkshop_folded_card =
      "assets/drinkshop/folded_card.png";
  static final String drinkshop_frapper = "assets/drinkshop/frappe.png";
  static final String drinkshop_frapper_with_straw =
      "assets/drinkshop/frappe_with_straw.png";
  static final String drinkshop_glass = "assets/drinkshop/glass.png";
  static final String drinkshop_glass_with_straw =
      "assets/drinkshop/glass_with_straw.png";

  static final String smoothrotate_logo = "assets/smoothrotate/logo.png";
  static final String smoothrotate_profile = "assets/smoothrotate/profile.jpg";

  static final String moviesdetails_1 = "assets/moviesdetails/1.png";
  static final String moviesdetails_2 = "assets/moviesdetails/2.png";
  static final String moviesdetails_3 = "assets/moviesdetails/3.png";
  static final String moviesdetails_4 = "assets/moviesdetails/4.png";
  static final String moviesdetails_banner = "assets/moviesdetails/banner.png";
  static final String moviesdetails_ellie = "assets/moviesdetails/ellie.png";
  static final String moviesdetails_eric = "assets/moviesdetails/eric.png";
  static final String moviesdetails_jenny = "assets/moviesdetails/jenny.png";
  static final String moviesdetails_kevin = "assets/moviesdetails/kevin.png";
  static final String moviesdetails_louis = "assets/moviesdetails/louis.png";
  static final String moviesdetails_poster = "assets/moviesdetails/poster.png";

  static final String youtube_addFriend =
      "assets/youtube/add_friends_vector.svg";
  static final String youtube_logo = "assets/youtube/youtube_logo.png";

  static final String carousel_img1 = "assets/carousel/img1.jpg";
  static final String carousel_img2 = "assets/carousel/img2.jpg";
  static final String carousel_img3 = "assets/carousel/img3.jpg";
  static final String carousel_img4 = "assets/carousel/img4.jpg";
  static final String carousel_img5 = "assets/carousel/img5.jpg";
  static final String carousel_img6 = "assets/carousel/img6.jpg";
  static final String carousel_img7 = "assets/carousel/img7.jpg";
  static final String carousel_img8 = "assets/carousel/img8.jpg";
  static final String carousel_img9 = "assets/carousel/img9.jpg";
  static final String carousel_img10 = "assets/carousel/img10.jpg";

  static final String list_steering = "assets/list/drive-steering-wheel.jpg";
  static final String list_lint = "assets/list/line.png";
  static final String avatar_cactus = "assets/avatar/cactus.jpeg";
  static final String avatar_chris = "assets/avatar/chris.jpg";
  static final String avatar_cone = "assets/avatar/cone.jpeg";
  static final String avatar_hugh = "assets/avatar/hugh.jpg";
  static final String avatar_johnnydepp = "assets/avatar/johnnydepp.jpg";
  static final String avatar_letter = "assets/avatar/letter.jpeg";
  static final String avatar_tomcruise = "assets/avatar/tomcruise.jpg";
  static final String avatar_window = "assets/avatar/window.jpeg";

  static final String uilist_drive_steering =
      "assets/uilist/drive-steering-wheel.jpg";
  static final String uilist_line = "assets/uilist/line.png";

  static final String fashion_chanellogo = "assets/fashion/chanellogo.jpg";
  static final String fashion_chloelogo = "assets/fashion/chloelogo.png";
  static final String fashion_dress = "assets/fashion/dress.jpg";
  static final String fashion_louisvuitton = "assets/fashion/louisvuitton.jpg";
  static final String fashion_model1 = "assets/fashion/model1.jpeg";
  static final String fashion_model2 = "assets/fashion/model2.jpeg";
  static final String fashion_model3 = "assets/fashion/model3.jpeg";
  static final String fashion_modelgrid1 = "assets/fashion/modelgrid1.jpeg";
  static final String fashion_modelgrid2 = "assets/fashion/modelgrid2.jpeg";
  static final String fashion_modelgrid3 = "assets/fashion/modelgrid3.jpeg";

  static final String pandulum = "assets/common/pandulum.png";

  static final String eatLa_avatar01 = "assets/eatela/avatar/avatar0001.jpg";
  static final String eatLa_avatar02 = "assets/eatela/avatar/avatar0002.jpg";
  static final String eatLa_avatar03 = "assets/eatela/avatar/avatar0003.jpg";
  static final String eatLa_avatar04 = "assets/eatela/avatar/avatar0004.jpg";
  static final String eatLa_avatar05 = "assets/eatela/avatar/avatar0005.jpg";
  static final String eatLa_avatar06 = "assets/eatela/avatar/avatar0006.jpg";
  static final String eatLa_avatar07 = "assets/eatela/avatar/avatar0007.jpg";
  static final String eatLa_avatar08 = "assets/eatela/avatar/avatar0008.jpg";
  static final String eatLa_avatar09 = "assets/eatela/avatar/avatar0009.jpg";
  static final String eatLa_avatar10 = "assets/eatela/avatar/avatar0010.jpg";
  static final String eatLa_avatar11 = "assets/eatela/avatar/avatar0011.jpg";
  static final String eatLa_avatar12 = "assets/eatela/avatar/avatar0012.jpg";
  static final String eatLa_avatar13 = "assets/eatela/avatar/avatar0013.jpg";
  static final String eatLa_avatar14 = "assets/eatela/avatar/avatar0014.jpg";
  static final String eatLa_avatar15 = "assets/eatela/avatar/avatar0015.jpg";
  static final String eatLa_avatar16 = "assets/eatela/avatar/avatar0016.jpg";
  static final String eatLa_avatar17 = "assets/eatela/avatar/avatar0017.jpg";
  static final String eatLa_avatar18 = "assets/eatela/avatar/avatar0018.jpg";

  static final String eatLa_camera01 = "assets/eatela/camera/camera0001.jpg";
  static final String eatLa_camera02 = "assets/eatela/camera/camera0002.jpg";
  static final String eatLa_camera_effect01 =
      "assets/eatela/camera_effect/camera_effect0001.jpg";
  static final String eatLa_camera_effect02 =
      "assets/eatela/camera_effect/camera_effect0002.jpg";
  static final String eatLa_camera_effect03 =
      "assets/eatela/camera_effect/camera_effect0003.jpg";
  static final String eatLa_camera_effect04 =
      "assets/eatela/camera_effect/camera_effect0004.jpg";
  static final String eatLa_camera_effect05 =
      "assets/eatela/camera_effect/camera_effect0005.jpg";
  static final String eatLa_camera_effect06 =
      "assets/eatela/camera_effect/camera_effect0006.jpg";
  static final String eatLa_camera_grid01 =
      "assets/eatela/camera_grid/camera_grid0003.jpg";
  static final String eatLa_camera_grid02 =
      "assets/eatela/camera_grid/camera_grid0004.jpg";
  static final String eatLa_camera_grid03 =
      "assets/eatela/camera_grid/camera_grid0005.jpg";
  static final String eatLa_camera_grid04 =
      "assets/eatela/camera_grid/camera_grid0006.jpg";
  static final String eatLa_camera_grid05 =
      "assets/eatela/camera_grid/camera_grid0007.jpg";
  static final String eatLa_camera_grid06 =
      "assets/eatela/camera_grid/camera_grid0008.jpg";
  static final String eatLa_camera_grid07 =
      "assets/eatela/camera_grid/camera_grid0009.jpg";
  static final String eatLa_camera_grid08 =
      "assets/eatela/camera_grid/camera_grid0010.jpg";
  static final String eatLa_camera_grid09 =
      "assets/eatela/camera_grid/camera_grid0011.jpg";
  static final String eatLa_camera_grid10 =
      "assets/eatela/camera_grid/camera_grid0012.jpg";
  static final String eatLa_camera_grid11 =
      "assets/eatela/camera_grid/camera_grid0013.jpg";
  static final String eatLa_camera_grid12 =
      "assets/eatela/camera_grid/camera_grid0014.jpg";
  static final String eatLa_camera_grid13 =
      "assets/eatela/camera_grid/camera_grid0015.jpg";

  static String randEatlaMeal =
      "assets/eatela/meals/meal000${nextInter(1, 9)}.jpg";
  static final String eatLa_meal0001 = "assets/eatela/meals/meal0001.jpg";
  static final String eatLa_meal0002 = "assets/eatela/meals/meal0002.jpeg";
  static final String eatLa_meal0003 = "assets/eatela/meals/meal0003.jpg";
  static final String eatLa_meal0004 = "assets/eatela/meals/meal0004.jpg";
  static final String eatLa_meal0005 = "assets/eatela/meals/meal0005.jpg";
  static final String eatLa_meal0006 = "assets/eatela/meals/meal0006.jpg";
  static final String eatLa_meal0007 = "assets/eatela/meals/meal0007.jpg";
  static final String eatLa_meal0008 = "assets/eatela/meals/meal0008.jpg";
  static final String eatLa_meal0009 = "assets/eatela/meals/meal0009.jpg";
  static final String eatLa_meal0010 = "assets/eatela/meals/meal0010.jpg";
  static final String eatLa_meal0011 = "assets/eatela/meals/meal0011.jpg";
  static final String eatLa_meal0012 = "assets/eatela/meals/meal0012.jpg";
  static final String eatLa_meal0013 = "assets/eatela/meals/meal0013.jpg";
  static final String eatLa_meal0014 = "assets/eatela/meals/meal0014.jpg";
  static final String eatLa_meal0015 = "assets/eatela/meals/meal0015.jpg";
  static final String eatLa_meal0016 = "assets/eatela/meals/meal0016.jpg";
  static final String eatLa_meal0017 = "assets/eatela/meals/meal0017.jpg";
  static final String eatLa_meal0018 = "assets/eatela/meals/meal0018.jpg";
  static final String eatLa_meal0019 = "assets/eatela/meals/meal0019.jpg";
  static final String eatLa_meal0020 = "assets/eatela/meals/meal0020.jpg";
  static final String eatLa_meal0021 = "assets/eatela/meals/meal0021.jpg";
  static final String eatLa_meal0022 = "assets/eatela/meals/meal0022.jpg";
  static final String eatLa_meal0023 = "assets/eatela/meals/meal0023.jpg";
  static final String eatLa_meal0024 = "assets/eatela/meals/meal0024.jpg";
  static final String eatLa_meal0025 = "assets/eatela/meals/meal0025.jpg";
  static final String eatLa_meal0026 = "assets/eatela/meals/meal0026.jpg";
  static final String eatLa_meal0027 = "assets/eatela/meals/meal0027.jpg";
  static final String eatLa_meal0028 = "assets/eatela/meals/meal0028.jpg";
  static final String eatLa_meal0029 = "assets/eatela/meals/meal0029.jpg";
  static final String eatLa_meal0030 = "assets/eatela/meals/meal0030.jpg";
  static final String eatLa_meal0031 = "assets/eatela/meals/meal0031.jpg";
  static final String eatLa_meal0032 = "assets/eatela/meals/meal0032.jpg";
  static final String eatLa_meal0033 = "assets/eatela/meals/meal0033.jpg";
  static final String eatLa_meal0034 = "assets/eatela/meals/meal0034.jpg";
  static final String eatLa_meal0035 = "assets/eatela/meals/meal0035.jpg";
  static final String eatLa_meal0036 = "assets/eatela/meals/meal0036.jpg";
  static final String eatLa_meal0037 = "assets/eatela/meals/meal0037.jpg";
  static final String eatLa_meal0038 = "assets/eatela/meals/meal0038.jpg";
  static final String eatLa_meal0039 = "assets/eatela/meals/meal0039.jpg";
  static final String eatLa_meal0040 = "assets/eatela/meals/meal0040.jpg";
  static final String eatLa_meal0041 = "assets/eatela/meals/meal0041.jpg";
  static final String eatLa_meal0042 = "assets/eatela/meals/meal0042.jpg";
  static final String eatLa_meal0043 = "assets/eatela/meals/meal0043.jpg";
  static final String eatLa_meal0044 = "assets/eatela/meals/meal0044.jpg";
  static final String eatLa_meal0045 = "assets/eatela/meals/meal0045.jpg";
  static final String eatLa_meal0046 = "assets/eatela/meals/meal0046.jpg";
  static final String eatLa_meal0047 = "assets/eatela/meals/meal0047.jpg";
  static final String eatLa_meal0048 = "assets/eatela/meals/meal0048.jpg";
  static final String eatLa_meal0049 = "assets/eatela/meals/meal0049.jpg";
  static final String eatLa_meal0050 = "assets/eatela/meals/meal0050.jpg";
  static final String eatLa_meal0051 = "assets/eatela/meals/meal0051.jpg";
  static final String eatLa_meal0052 = "assets/eatela/meals/meal0052.jpg";
  static final String eatLa_meal0053 = "assets/eatela/meals/meal0053.jpg";
  static final String eatLa_meal0054 = "assets/eatela/meals/meal0054.jpg";
  static final String eatLa_meal0055 = "assets/eatela/meals/meal0055.jpg";
  static final String eatLa_meal0056 = "assets/eatela/meals/meal0056.jpg";
  static final String eatLa_meal0057 = "assets/eatela/meals/meal0057.jpg";
  static final String eatLa_meal0058 = "assets/eatela/meals/meal0058.jpg";
  static final String eatLa_meal0059 = "assets/eatela/meals/meal0059.jpg";
  static final String eatLa_meal0060 = "assets/eatela/meals/meal0060.jpg";
  static final String eatLa_meal0061 = "assets/eatela/meals/meal0061.jpg";
  static final String eatLa_meal0062 = "assets/eatela/meals/meal0062.jpg";
  static final String eatLa_meal0063 = "assets/eatela/meals/meal0063.jpg";
  static final String eatLa_meal0064 = "assets/eatela/meals/meal0064.jpg";
  static final String eatLa_meal0065 = "assets/eatela/meals/meal0065.jpg";
  static final String eatLa_meal0066 = "assets/eatela/meals/meal0066.jpg";
  static final String eatLa_meal0067 = "assets/eatela/meals/meal0067.jpg";
  static final String eatLa_meal0068 = "assets/eatela/meals/meal0068.jpg";
  static final String eatLa_meal0069 = "assets/eatela/meals/meal0069.jpg";
  static final String eatLa_meal0070 = "assets/eatela/meals/meal0070.jpg";
  static final String eatLa_meal0071 = "assets/eatela/meals/meal0071.jpg";
  static final String eatLa_meal0072 = "assets/eatela/meals/meal0072.jpg";
  static final String eatLa_meal0073 = "assets/eatela/meals/meal0073.jpg";
  static final String eatLa_meal0074 = "assets/eatela/meals/meal0074.jpg";
  static final String eatLa_meal0075 = "assets/eatela/meals/meal0075.jpg";
  static final String eatLa_meal0076 = "assets/eatela/meals/meal0076.jpg";
  static final String eatLa_meal0077 = "assets/eatela/meals/meal0077.jpg";
  static final String eatLa_meal0078 = "assets/eatela/meals/meal0078.jpg";
  static final String eatLa_meal0079 = "assets/eatela/meals/meal0079.jpg";
  static final String eatLa_meal0080 = "assets/eatela/meals/meal0080.jpg";
  static final String eatLa_meal0081 = "assets/eatela/meals/meal0081.jpg";
  static final String eatLa_meal0082 = "assets/eatela/meals/meal0082.jpg";
  static final String eatLa_meal0083 = "assets/eatela/meals/meal0083.jpg";
  static final String eatLa_meal0084 = "assets/eatela/meals/meal0084.jpg";
  static final String eatLa_meal0085 = "assets/eatela/meals/meal0085.jpg";
  static final String eatLa_meal0086 = "assets/eatela/meals/meal0086.jpg";
  static final String eatLa_meal0087 = "assets/eatela/meals/meal0087.jpg";
  static final String eatLa_meal0088 = "assets/eatela/meals/meal0088.jpg";
  static final String eatLa_meal0089 = "assets/eatela/meals/meal0089.jpg";
  static final String eatLa_meal0090 = "assets/eatela/meals/meal0090.jpg";
  static final String eatLa_meal0091 = "assets/eatela/meals/meal0091.jpg";
  static final String eatLa_meal0092 = "assets/eatela/meals/meal0092.jpg";
  static final String eatLa_meal0093 = "assets/eatela/meals/meal0093.jpg";
  static final String eatLa_meal0094 = "assets/eatela/meals/meal0094.jpg";
  static final String eatLa_meal0095 = "assets/eatela/meals/meal0095.jpg";
  static final String eatLa_meal0096 = "assets/eatela/meals/meal0096.jpg";
  static final String eatLa_meal0097 = "assets/eatela/meals/meal0097.jpg";
  static final String eatLa_meal0098 = "assets/eatela/meals/meal0098.jpg";
  static final String eatLa_meal0099 = "assets/eatela/meals/meal0099.jpg";
  static final String eatLa_meal0100 = "assets/eatela/meals/meal0100.jpgronf";
  static final String eatLa_meal0101 = "assets/eatela/meals/meal0101.jpg";
  static final String eatLa_meal0102 = "assets/eatela/meals/meal0102.jpg";
  static final String eatLa_meal0103 = "assets/eatela/meals/meal0103.jpg";
  static final String eatLa_meal0104 = "assets/eatela/meals/meal0104.jpg";
  static final String eatLa_meal0105 = "assets/eatela/meals/meal0105.jpg";
  static final String eatLa_meal0106 = "assets/eatela/meals/meal0106.jpg";
  static final String eatla_profile_bg =
      "assets/eatela/profile/eatla_profile_bg.png";

  static final String gourment_food1 = "assets/gourmet/food1.jpg";
  static final String gourment_food2 = "assets/gourmet/food2.jpeg";
  static final String gourment_food3 = "assets/gourmet/food3.jpg";
  static final String gourment_orangemodel = "assets/gourmet/orangemodel.jpg";

  static final String tickerQr_corners = "assets/ticketqrhero/corners.png";
  static final String tickerQr_qrcode = "assets/ticketqrhero/qrcode.png";

  static final String hair_style1 = "assets/hairstylist/style1.jpg";
  static final String hair_style2 = "assets/hairstylist/style2.jpg";
  static final String hair_style3 = "assets/hairstylist/style3.jpeg";

  static final String chefprofile_bananaberry =
      "assets/chefprofile/bananaberry.jpeg";
  static final String chefprofile_bananabreak =
      "assets/chefprofile/bananabreak.jpg";
  static final String chefprofile_chris = "assets/chefprofile/chris.jpg";
  static final String chefprofile_dumplings =
      "assets/chefprofile/dumplings.jpeg";
  static final String chefprofile_fruitbreak =
      "assets/chefprofile/fruitbreak.jpeg";
  static final String chefprofile_fruitpancake =
      "assets/chefprofile/fruitpancake.jpeg";
  static final String chefprofile_noodles = "assets/chefprofile/noodles.jpeg";

  static final String receipes_upsplash =
      "assets/receipes/brooke-lark-385507-unsplash.jpg";
  static final String receipes_g_logo = "assets/receipes/g-logo.png";
  static final String sotopia_main_bottom_navbar =
      "assets/sotopia/mainbottomnavbar.png";
  static final String sotopia_welcome_background =
      "assets/sotopia/sotopia_welcome_background.png";
  static final String sotopia_welcome_companylogo =
      "assets/sotopia/sotopia_welcome_company_logo.png";
  static final String sotopia_onboading_bg = "assets/sotopia/onboarding_bg.png";

  static final String sotopia_green_ok_btn = "assets/sotopia/green_ok_btn.png";

  static final String sotopia_red_notOk_btn =
      "assets/sotopia/red_notOk_btn.png";
  static final String sotopia_account_confirm_righ_btn =
      "assets/sotopia/account_confirm_right_btn.png";

  static final String sotopia_account_congulation_bg =
      "assets/sotopia/sotopia_account_congratulation_bg.png";

  static final String sotopia_onboarding_importFromContactList =
      "assets/sotopia/sotopia_OnBoarding_ImportfromContactList.png";
  static final String sotopia_onboarding_importFromFacebook =
      "assets/sotopia/sotopia_OnBoarding_Importfromfacebook.png";

  static final String sotopia_contact_from_facebook =
      "assets/sotopia/sotopia_FindContact_facebook_ic.png";
  static final String sotopia_contact_from_phone =
      "assets/sotopia/sotopia_FindContact_phone_ic.png";

  static final String sotopia_main_feed_ic =
      "assets/sotopia/sotopia_main_feed_ic.png";
  static final String sotopia_main_inbox_ic =
      "assets/sotopia/sotopia_main_inbox_ic.png";

  static final String sotopia_main_profile_ic =
      "assets/sotopia/sotopia_main_profile_ic.png";
  static final String sotopia_main_setting_ic =
      "assets/sotopia/sotopia_main_setting_ic.png";
  static final String sotopia_main_background =
      "assets/sotopia/sotopia_main_background.png";
  static final String sotopia_card_story = "assets/sotopia/card_story.png";

  static final String sotopia_party_ic = "assets/sotopia/party_ic.png";
  static final String sotopia_location_ic = "assets/sotopia/location_ic.png";
  static final String sotopia_hobby_ic = "assets/sotopia/hobby_ic.png";
  static final String sotopia_game_ic = "assets/sotopia/game_ic.png";
  static final String sotopia_food_ic = "assets/sotopia/food_ic.png";
  static final String sotopia_beaty_ic = "assets/sotopia/beauty_ic.png";
  static final String sotopia_apparel_ic = "assets/sotopia/apparel_ic.png";
  static final String sotopia_setting_ic = "assets/sotopia/setting_ic.png";

  static final String sotopia_camera_ic = "assets/sotopia/ic_camera_s_dark.png";
  static final String sotopia_claim_ic = "assets/sotopia/ic_claim_s_dark.png";
  static final String sotopia_find_ic = "assets/sotopia/ic_find_s_dark.png";
  static final String sotopia_scan_ic = "assets/sotopia/ic_scan_s_dark.png";

  static final String sotopia_badge_beauty_ic =
      "assets/sotopia/sotopia_beauty_ic.png";
  static final String sotopia_badge_book_ic =
      "assets/sotopia/sotopia_book_ic.png";
  static final String sotopia_badge_destination_ic =
      "assets/sotopia/sotopia_destination_ic.png";
  static final String sotopia_badge_food_ic =
      "assets/sotopia/sotopia_food_ic.png";
  static final String sotopia_badge_game_ic =
      "assets/sotopia/sotopia_game_ic.png";
  static final String sotopia_badge_movie_ic =
      "assets/sotopia/sotopia_movie_ic.png";
  static final String sotopia_badge_msuic_ic =
      "assets/sotopia/sotopia_music_ic.png";

  static final String sotopia_command_ic = "assets/sotopia/command_ic.png";

  static final String sotopia_setting_account_ic =
      "assets/sotopia/setting_account_ic.png";
  static final String sotopia_setting_balance_ic =
      "assets/sotopia/setting_balance_ic.png";
  static final String sotopia_setting_language_ic =
      "assets/sotopia/setting_language_ic.png";
  static final String sotopia_setting_reward_ic =
      "assets/sotopia/setting_pending_reward_ic.png";
  static final String sotopia_setting_detail_ic =
      "assets/sotopia/setting_payment_detail_ic.png";
  static final String sotopia_setting_history_ic =
      "assets/sotopia/setting_transaction_history_ic.png";

  static final String screen_list1 = "assets/screen/list1.jpg";
  static final String screen_list2 = "assets/screen/list2.jpg";
  static final String screen_list3 = "assets/screen/list3.jpg";
  static final String screen_list4 = "assets/screen/list4.jpg";
  static final String screen_list5 = "assets/screen/list5.jpg";
  static final String screen_list6 = "assets/screen/list6.jpg";
  static final String screen_pancake = "assets/screen/pancake.jpg";
  static final String screen_profile = "assets/screen/profile.jpg";

  static final String cardlibs_paid = "assets/cardslib/paid.jpg";
  static final String cardlibs_profile_pic = "assets/cardslib/profile_pic.jpg";

  static final String foldingcell_balls_1 = "assets/foldingcell/balls_1.png";
  static final String foldingcell_balls_2 = "assets/foldingcell/balls_2.png";
  static final String foldingcell_balls_3 = "assets/foldingcell/balls_3.png";
  static final String foldingcell_ice_cream_1 =
      "assets/foldingcell/ice_cream_1.png";
  static final String foldingcell_ice_cream_2 =
      "assets/foldingcell/ice_cream_2.png";
  static final String foldingcell_ice_cream_3 =
      "assets/foldingcell/ice_cream_3.png";

  static final String ecommerce_product_blazer1 =
      "assets/ecommerce/products/blazer1.jpeg";
  static final String ecommerce_product_blazer2 =
      "assets/ecommerce/products/blazer2.jpeg";
  static final String ecommerce_product_dress1 =
      "assets/ecommerce/products/dress1.jpeg";
  static final String ecommerce_product_dress2 =
      "assets/ecommerce/products/dress2.jpeg";
  static final String ecommerce_product_hills1 =
      "assets/ecommerce/products/hills1.jpeg";
  static final String ecommerce_product_hills2 =
      "assets/ecommerce/products/hills2.jpeg";
  static final String ecommerce_product_pants1 =
      "assets/ecommerce/products/pants1.jpg";
  static final String ecommerce_product_pants2 =
      "assets/ecommerce/products/pants2.jpeg";
  static final String ecommerce_product_shoe1 =
      "assets/ecommerce/products/shoe1.jpg";
  static final String ecommerce_product_skt1 =
      "assets/ecommerce/products/skt1.jpeg";
  static final String ecommerce_product_skt2 =
      "assets/ecommerce/products/skt2.jpeg";

  static final String ecommerce_c1 = "assets/ecommerce/c1.jpg";
  static final String ecommerce_m1 = "assets/ecommerce/m1.jpeg";
  static final String ecommerce_m2 = "assets/ecommerce/m2.jpg";
  static final String ecommerce_w1 = "assets/ecommerce/w1.jpeg";
  static final String ecommerce_w3 = "assets/ecommerce/w3.jpeg";
  static final String ecommerce_w4 = "assets/ecommerce/w4.jpeg";

  static final String ecommerce_Cats_accessories =
      "assets/ecommerce/cats/accessories.png";
  static final String ecommerce_Cats_dress = "assets/ecommerce/cats/dress.png";
  static final String ecommerce_Cats_formal =
      "assets/ecommerce/cats/formal.png";
  static final String ecommerce_Cats_informal =
      "assets/ecommerce/cats/informal.png";
  static final String ecommerce_Cats_jeans = "assets/ecommerce/cats/jeans.png";
  static final String ecommerce_Cats_shoe = "assets/ecommerce/cats/shoe.png";
  static final String ecommerce_Cats_tshirt =
      "assets/ecommerce/cats/tshirt.png";

  static final String decntralmarketplace_binance_1 =
      "assets/decentralmarketplace/binance_1.png";
  static final String decntralmarketplace_binance_2 =
      "assets/decentralmarketplace/binance_2.jpg";
  static final String decntralmarketplace_binance_3 =
      "assets/decentralmarketplace/binance_3.jpg";

  static final String decntralmakret_issuecertificate =
      "assets/decentralmarketplace/issuecertificate.png";

  static final String decntralmarket_blockpasslogo =
      "assets/decentralmarketplace/blcokpasslogo.png";

  static String get porshe =>
      "https://files1.porsche.com/filestore/image/multimedia/none/991-2nd-c2-t-modelimage-sideshot/model/835bee23-b26b-11e7-b591-0019999cd470/porsche-model.png";

  static String get SRTBackBackgroundA => "assets/srt/A1.jpg";

  static String get SRT30 => "assets/srt/30.png";

  static String get NetworkAvator =>
      "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80";

  static String get Orange =>
      "https://images.unsplash.com/photo-1547514701-42782101795e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80";

  static String get Kiwi =>
      "https://images.unsplash.com/photo-1521997888043-aa9c827744f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80";

  static String get Banana =>
      "https://images.unsplash.com/photo-1531326240216-7b04ad593229?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=936&q=80";

  static String get Pineapple =>
      "https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80";

  static String get Lemon =>
      "https://images.unsplash.com/photo-1508902708314-25ca18334a11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80";
}

int nextInter(int min, int max) {
  Random rnd = new Random();
  return min + rnd.nextInt(max - min);
}

-- phpMyAdmin SQL Dump
-- version 2.11.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2012 at 07:30 PM
-- Server version: 5.1.66
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ブログ記事のID',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'タイトル',
  `contents` text COLLATE utf8_unicode_ci COMMENT '記事の内容',
  `published` datetime DEFAULT NULL COMMENT '公開日時',
  `created` datetime DEFAULT NULL COMMENT '作成日時',
  `updated` datetime DEFAULT NULL COMMENT '更新日時',
  `deleted` datetime DEFAULT NULL COMMENT '削除日時',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ブログ記事' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `contents`, `published`, `created`, `updated`, `deleted`) VALUES
(6, '東海道線、上下線で一時運転見合わせ', '　【ＪＲ東日本発表】東海道線は４日午後５時３０分ごろ発生したＪＲ品川駅構内での人身事故の影響で、上下線で一時、運転を見合わせた。午後６時１０分ごろに運転を再開した。', '2012-11-04 19:24:00', '2012-11-04 19:24:13', '2012-11-04 19:24:13', NULL),
(7, '記者はどうすべきだったか？〔１〕　福島原発事故報道批判を検証する', '　福島第一原子力発電所の事故について、東京電力は昨年３月１１日以降、さまざまな情報を発表してきた。私は翌１２日夜、取材記者として東電本店に入り、以後、その報道の一端に関与している。\r\n　この事故の報道について世の中ではさまざまな批判がなされている。その多くについて私は真剣に受け止めて、「記者としてどうすべきだったか」と考えてきている。しかし、なかには、印象批評の域を出ない批判や、誤った事実を前提にした批判も少なからずある。具体的な事実に基づいて実証的に批判するのではなく、誤った思い込みに基づく批判のための批判、あるいは、まるでスーパーマンに求めるかのような現実離れした「あるべき」論をいくら並べても、将来への教訓にはならない。\r\n　東電はどのような認識の下であのような発表をし、記者たちはどのような認識の下であのような報道をしたのか？　報じられた内容に対して、現実はどうだったのか？　東電の発表はウソだったのか？　何が問題なのか？　事故発生から１年を経て徐々に分かってきた事実関係を前提に置き直して、私の視点から当時の発表と報道を具体的に検証してみたい。その上で、報道に対する批判を検討し、将来への教訓の抽出を試みたい。\r\n\r\n（１）１号機　非常用復水器（ＩＣ）\r\n　・東電の発表と新聞の報道\r\n　・認識・伝達が困難な状況に\r\n　・認識への努力は尽くされたか\r\n　・冷却不全を疑わせる間接事実\r\n　・コミュニケーション不全\r\n（２）２号機　隔離時冷却系（ＲＣＩＣ）\r\n（３）４号機　燃料プール（ＳＦＰ）\r\n（４）過小評価と過大評価\r\n（５）知覚・判断・認識・伝達\r\n\r\n\r\n（１）１号機　非常用復水器（ＩＣ）\r\n\r\n◇東電の発表と新聞の報道\r\n　「１号の場合は水氷タンクがあって、そのなかを（水蒸気を）通して戻してやる、要は、冷たいところを通して蒸気を（水に）戻してあげる、シンプルな系統になってまして、そちらのほうが、まぁ、機能している」\r\n　昨年３月１１日午後１０時半過ぎ、東京・内幸町にある東京電力本店で、東電の技術者は記者たちにそう説明した。\r\n　東日本大震災が発生したその日の夜、東電は、福島第一原発の「プラント状況」と題するニュースリリース（報道発表文）を２～４時間おきに出した。そのうち最初の３つ、すなわち「午後７時現在」「午後９時現在」「午前零時現在」の３つは、１号機について「非常用復水器で原子炉蒸気を冷やしている状況です」と断定的に説明していた。\r\n　炉内で発生した高温の水蒸気が非常用復水器（ＩＣ）の水タンクの中のコイル状のパイプを通ることで冷やされ、液体に凝縮され、水となってそれが炉内に戻る、つまり、１号機では炉内の水と燃料の冷却が続いているということをそれらの発表は意味する。\r\n　福島第一原発ではその夜、９時１９分に４時間余ぶりに１号機原子炉の水位計を仮復旧させた。そこで読み取れた値は、原子炉圧力容器に縦に収納されている燃料棒の上端より０・２０メートル高い水位であることを指し示した。\r\n　午後１０時半過ぎ、東電の技術者は本店での記者会見で「水位は確認されています」と明らかにした。記者に「十分な余裕がある？」と尋ねられると、その技術者は「燃料は（水面上に）出ていない」と答えた。\r\n　すべての電動の注水設備が停止している中で、このような水位が維持されるということはＩＣが機能しているからだ、と東電の技術者たちは認識していた。（＊１）記者たちに対するその技術者の説明によれば、ＩＣは電気がなくても作動できるという。だから、電源喪失状態の下でもＩＣが最後の頼みの綱となって原子炉を冷却し続けているように当時は見えた。水につかっている限りは燃料は溶けない。実際、午後９時過ぎの時点で東電は「炉心は健全である」と考えていた。（＊２）\r\n　ところが、そうした状況も翌１２日未明に時間切れとなった、ように当時は見えた。１２日午前４時１５分、東電は「非常用復水器で原子炉蒸気を冷やしておりましたが、現在は停止しています」と発表した。これと軌を一にするかのように、東電が把握する原子炉の水位は午前６時４０分過ぎに下がり始めた。\r\n　１２日早朝に東電が認識していた原子炉水位は燃料棒の上端より１・３０メートル高かった。それが午前８時３６分に燃料の上端まで下がってゼロとなり、午前１１時２０分過ぎにマイナス１メートルを超え、午後零時３５分にマイナス１・７０メートルとなった。燃料棒の長さは約４メートルで、これはすなわち、燃料棒の上のほうは気中に露出する一方で、下のほうは一貫して水に接した状態であることを示す。燃料棒の上端のほうは高温になって溶融しつつあるとみられる一方で、その下のほうは蒸気である程度は冷やされ、また、水につかった部分は損傷することなく形を保っているだろう、というようなイメージが東電の技術者たちの頭に描かれているようだった。\r\n\r\n全国紙、ＮＹタイムズは「一部炉心溶融」と報道\r\n\r\n　朝日新聞は１号機の原子炉について、１２日の朝刊で「水位は徐々に低下している」と指摘しながらも、「非常時の復水器が作動し、１２日午前０時半現在、ＥＣＣＳ（緊急炉心冷却システム）が作動すべき状態にはなっていない」と報じた。ＥＣＣＳが作動しなければならないほどまでには炉内の水位は下がっておらず、燃料は水面下にあるというふうにこの記事から読み取れる。そこから半日が経過した後の夕刊では「東電は、燃料の一部が水面から露出したとみており、（中略）『燃料の一部が溶けるなど何らかの損傷を受けている可能性が高い』」と報じた。\r\n\r\n\r\n　これら１２日の朝夕刊の記事はいずれも、１１日当日は燃料の冷却ができていたが、１２日早朝までにＩＣが作動しなくなり、それによって原子炉の水位が下がり始め、燃料棒の上のほうが部分的に溶融した、という筋書きに沿ったものだといえる。１３日の紙面でも、一定時間はＩＣが炉内を冷やしていたという筋書きが維持され、「１号機では（中略）原子炉内を冷やしていたが（中略）核燃料が溶け出す『炉心溶融（メルトダウン）』が起きたおそれが出た」と記述した。（＊３）\r\n　米国の有力紙ニューヨーク・タイムズは３月１２日、「状況は深刻だが、１９７９年にスリーマイル島原発で起きた一部炉心溶融（partial core meltdown）のような壊滅的な緊急事態には遠く及ばない」という見方を紹介した上で、事故発生２０時間の時点（日本時間では１２日午前）の福島第一原発の状況として「プラントはバッテリー制御の冷却装置で操作されている」と中面で報じた。（＊４）翌１３日には１面トップに扱いを大きくして「日本の当局者たちは、部分的なメルトダウンが起きたと推定していると述べた」と書いた。（＊５）\r\n　「バッテリー制御の冷却装置」というのは１号機のＩＣや２号機の隔離時冷却系（ＲＣＩＣ）を指すとみられ、３月２０日の紙面でもニューヨーク・タイムズは「地震発生から数時間はバッテリーが機能していた」と言い切った。また、「全炉心溶融（full meltdown）と一部溶融（partial meltdown）の違いは非常に大きい」と分析した上で「日本の原子炉で疑われているのは一部溶融」と指摘する記事を１４日に掲載し、１６日には、「すでに燃料の一部が溶融していると考えられている」と指摘した上で、「全炉心溶融（full meltdowns）を防ぐために海水注入にあたる５０人の作業員」に焦点をあてる記事を１面トップに掲載した。（＊６）以後２２日まで、ニューヨーク・タイムズは「一部溶融」と書き続けており、原子炉内の状態について、同紙は日本の新聞各紙とほぼ同じ、あるいは、１２日朝刊など一部ではより楽観的な認識で報じたといえる。\r\n　実際には、津波に襲われて以降、１号機と２号機ではバッテリーは水をかぶって満足に機能できず、１号機ではＩＣもほとんど機能しなかったとみられることがその後の調査で少しずつ明らかになってきている。津波来襲直後にＩＣがまったく機能しなくなったと仮定した場合、東電の解析によれば、（＊７）１号機の原子炉の水位は１１日午後６時１０分ごろに燃料の上端まで下がって、以後はマイナスとなり、午後７時ごろに炉心損傷が始まり、やがて燃料は完全に溶けて圧力容器の底にすべて落ち、翌１２日午前１時５０分ごろに溶融燃料で圧力容器が破損したとみられる。すなわち「全炉心溶融（full meltdown）」が起こったとみられる。\r\n　事故発生当時、こうした筋書きが現実の事態として朝日新聞やニューヨーク・タイムズで報じられたことはなく、実際に報じられたのは、「全部」ではなく「一部」の核燃料が「１１日夜」ではなく「１２日午前」に溶融を始めた、という筋書きだった。なぜそうなったか・・・', '2012-11-04 19:24:00', '2012-11-04 19:24:45', '2012-11-04 19:24:45', NULL),
(4, '1.<A> , <A test>  2.</A> , </A test>  3.<ABBR> , <ABBR test>  4.</ABBR> , </ABBR test> ', '1.<A> , <A test> \r\n2.</A> , </A test> \r\n3.<ABBR> , <ABBR test> \r\n4.</ABBR> , </ABBR test> \r\n5.<ACRONYM> , <ACRONYM test> \r\n6.</ACRONYM> , </ACRONYM test> \r\n7.<ADDRESS> , <ADDRESS test> \r\n8.</ADDRESS> , </ADDRESS test> \r\n9.<APPLET> , <APPLET test> \r\n10.</APPLET> , </APPLET test> \r\n11.<AREA> , <AREA test> \r\n12.</AREA> , </AREA test> \r\n13.<B> , <B test> \r\n14.</B> , </B test> \r\n15.<BASE> , <BASE test> \r\n16.</BASE> , </BASE test> \r\n17.<BASEFONT> , <BASEFONT test> \r\n18.</BASEFONT> , </BASEFONT test> \r\n19.<BDO> , <BDO test> \r\n20.</BDO> , </BDO test> \r\n21.<BGSOUND> , <BGSOUND test> \r\n22.</BGSOUND> , </BGSOUND test> \r\n23.<BIG> , <BIG test> \r\n24.</BIG> , </BIG test> \r\n25.<BLINK> , <BLINK test> \r\n26.</BLINK> , </BLINK test> \r\n27.<BLOCKQUOTE> , <BLOCKQUOTE test> \r\n28.</BLOCKQUOTE> , </BLOCKQUOTE test> \r\n29.<BODY> , <BODY test> \r\n30.</BODY> , </BODY test> \r\n31.<BR> , <BR test> \r\n32.</BR> , </BR test> \r\n33.<BUTTON> , <BUTTON test> \r\n34.</BUTTON> , </BUTTON test> \r\n35.<CAPTION> , <CAPTION test> \r\n36.</CAPTION> , </CAPTION test> \r\n37.<CENTER> , <CENTER test> \r\n38.</CENTER> , </CENTER test> \r\n39.<CITE> , <CITE test> \r\n40.</CITE> , </CITE test> \r\n41.<CODE> , <CODE test> \r\n42.</CODE> , </CODE test> \r\n43.<COL> , <COL test> \r\n44.</COL> , </COL test> \r\n45.<COLGROUP> , <COLGROUP test> \r\n46.</COLGROUP> , </COLGROUP test> \r\n47.<DD> , <DD test> \r\n48.</DD> , </DD test> \r\n49.<DEL> , <DEL test> \r\n50.</DEL> , </DEL test> \r\n51.<DFN> , <DFN test> \r\n52.</DFN> , </DFN test> \r\n53.<DIR> , <DIR test> \r\n54.</DIR> , </DIR test> \r\n55.<DIV> , <DIV test> \r\n56.</DIV> , </DIV test> \r\n57.<DL> , <DL test> \r\n58.</DL> , </DL test> \r\n59.<DT> , <DT test> \r\n60.</DT> , </DT test> \r\n61.<EM> , <EM test> \r\n62.</EM> , </EM test> \r\n63.<EMBED> , <EMBED test> \r\n64.</EMBED> , </EMBED test> \r\n65.<FIELDSET> , <FIELDSET test> \r\n66.</FIELDSET> , </FIELDSET test> \r\n67.<FONT> , <FONT test> \r\n68.</FONT> , </FONT test> \r\n69.<FORM> , <FORM test> \r\n70.</FORM> , </FORM test> \r\n71.<FRAME> , <FRAME test> \r\n72.</FRAME> , </FRAME test> \r\n73.<FRAMESET> , <FRAMESET test> \r\n74.</FRAMESET> , </FRAMESET test> \r\n75.<H1> , <H1 test> \r\n76.</H1> , </H1 test> \r\n77.<H2> , <H2 test> \r\n78.</H2> , </H2 test> \r\n79.<H3> , <H3 test> \r\n80.</H3> , </H3 test> \r\n81.<H4> , <H4 test> \r\n82.</H4> , </H4 test> \r\n83.<H5> , <H5 test> \r\n84.</H5> , </H5 test> \r\n85.<H6> , <H6 test> \r\n86.</H6> , </H6 test> \r\n87.<HEAD> , <HEAD test> \r\n88.</HEAD> , </HEAD test> \r\n89.<HR> , <HR test> \r\n90.</HR> , </HR test> \r\n91.<HTML> , <HTML test> \r\n92.</HTML> , </HTML test> \r\n93.<I> , <I test> \r\n94.</I> , </I test> \r\n95.<IFRAME> , <IFRAME test> \r\n96.</IFRAME> , </IFRAME test> \r\n97.<ILAYER> , <ILAYER test> \r\n98.</ILAYER> , </ILAYER test> \r\n99.<IMG> , <IMG test> \r\n100.</IMG> , </IMG test> \r\n101.<INPUT> , <INPUT test> \r\n102.</INPUT> , </INPUT test> \r\n103.<INS> , <INS test> \r\n104.</INS> , </INS test> \r\n105.<ISINDEX> , <ISINDEX test> \r\n106.</ISINDEX> , </ISINDEX test> \r\n107.<KBD> , <KBD test> \r\n108.</KBD> , </KBD test> \r\n109.<KEYGEN> , <KEYGEN test> \r\n110.</KEYGEN> , </KEYGEN test> \r\n111.<LABEL> , <LABEL test> \r\n112.</LABEL> , </LABEL test> \r\n113.<LAYER> , <LAYER test> \r\n114.</LAYER> , </LAYER test> \r\n115.<LEGEND> , <LEGEND test> \r\n116.</LEGEND> , </LEGEND test> \r\n117.<LH> , <LH test> \r\n118.</LH> , </LH test> \r\n119.<LI> , <LI test> \r\n120.</LI> , </LI test> \r\n121.<LINK> , <LINK test> \r\n122.</LINK> , </LINK test> \r\n123.<LISTING> , <LISTING test> \r\n124.</LISTING> , </LISTING test> \r\n125.<MAP> , <MAP test> \r\n126.</MAP> , </MAP test> \r\n127.<MARQUEE> , <MARQUEE test> \r\n128.</MARQUEE> , </MARQUEE test> \r\n129.<MENU> , <MENU test> \r\n130.</MENU> , </MENU test> \r\n131.<META> , <META test> \r\n132.</META> , </META test> \r\n133.<MULTICOL> , <MULTICOL test> \r\n134.</MULTICOL> , </MULTICOL test> \r\n135.<NEXTID> , <NEXTID test> \r\n136.</NEXTID> , </NEXTID test> \r\n137.<NOBR> , <NOBR test> \r\n138.</NOBR> , </NOBR test> \r\n139.<NOEMBED> , <NOEMBED test> \r\n140.</NOEMBED> , </NOEMBED test> \r\n141.<NOFRAME> , <NOFRAME test> \r\n142.</NOFRAME> , </NOFRAME test> \r\n143.<NOFRAMES> , <NOFRAMES test> \r\n144.</NOFRAMES> , </NOFRAMES test> \r\n145.<NOLAYER> , <NOLAYER test> \r\n146.</NOLAYER> , </NOLAYER test> \r\n147.<NOLAYERS> , <NOLAYERS test> \r\n148.</NOLAYERS> , </NOLAYERS test> \r\n149.<NOSCRIPT> , <NOSCRIPT test> \r\n150.</NOSCRIPT> , </NOSCRIPT test> \r\n151.<OBJECT> , <OBJECT test> \r\n152.</OBJECT> , </OBJECT test> \r\n153.<OL> , <OL test> \r\n154.</OL> , </OL test> \r\n155.<OPTGROUP> , <OPTGROUP test> \r\n156.</OPTGROUP> , </OPTGROUP test> \r\n157.<OPTION> , <OPTION test> \r\n158.</OPTION> , </OPTION test> \r\n159.<P> , <P test> \r\n160.</P> , </P test> \r\n161.<PARAM> , <PARAM test> \r\n162.</PARAM> , </PARAM test> \r\n163.<PLAINTEXT> , <PLAINTEXT test> \r\n164.</PLAINTEXT> , </PLAINTEXT test> \r\n165.<PRE> , <PRE test> \r\n166.</PRE> , </PRE test> \r\n167.<Q> , <Q test> \r\n168.</Q> , </Q test> \r\n169.<RP> , <RP test> \r\n170.</RP> , </RP test> \r\n171.<RT> , <RT test> \r\n172.</RT> , </RT test> \r\n173.<RUBY> , <RUBY test> \r\n174.</RUBY> , </RUBY test> \r\n175.<S> , <S test> \r\n176.</S> , </S test> \r\n177.<SAMP> , <SAMP test> \r\n178.</SAMP> , </SAMP test> \r\n179.<SCRIPT> , <SCRIPT test> \r\n180.</SCRIPT> , </SCRIPT test> \r\n181.<SELECT> , <SELECT test> \r\n182.</SELECT> , </SELECT test> \r\n183.<SMALL> , <SMALL test> \r\n184.</SMALL> , </SMALL test> \r\n185.<SPACER> , <SPACER test> \r\n186.</SPACER> , </SPACER test> \r\n187.<SPAN> , <SPAN test> \r\n188.</SPAN> , </SPAN test> \r\n189.<STRIKE> , <STRIKE test> \r\n190.</STRIKE> , </STRIKE test> \r\n191.<STRONG> , <STRONG test> \r\n192.</STRONG> , </STRONG test> \r\n193.<STYLE> , <STYLE test> \r\n194.</STYLE> , </STYLE test> \r\n195.<SUB> , <SUB test> \r\n196.</SUB> , </SUB test> \r\n197.<SUP> , <SUP test> \r\n198.</SUP> , </SUP test> \r\n199.<TABLE> , <TABLE test> \r\n200.</TABLE> , </TABLE test> \r\n201.<TBODY> , <TBODY test> \r\n202.</TBODY> , </TBODY test> \r\n203.<TD> , <TD test> \r\n204.</TD> , </TD test> \r\n205.<TEXTAREA> , <TEXTAREA test> \r\n206.</TEXTAREA> , </TEXTAREA test> \r\n207.<TFOOT> , <TFOOT test> \r\n208.</TFOOT> , </TFOOT test> \r\n209.<TH> , <TH test> \r\n210.</TH> , </TH test> \r\n211.<THEAD> , <THEAD test> \r\n212.</THEAD> , </THEAD test> \r\n213.<TITLE> , <TITLE test> \r\n214.</TITLE> , </TITLE test> \r\n215.<TR> , <TR test> \r\n216.</TR> , </TR test> \r\n217.<TT> , <TT test> \r\n218.</TT> , </TT test> \r\n219.<U> , <U test> \r\n220.</U> , </U test> \r\n221.<UL> , <UL test> \r\n222.</UL> , </UL test> \r\n223.<VAR> , <VAR test> \r\n224.</VAR> , </VAR test> \r\n225.<WBR> , <WBR test> \r\n226.</WBR> , </WBR test> \r\n227.<XML> , <XML test> \r\n228.</XML> , </XML test> \r\n229.<XMP> , <XMP test> \r\n230.</XMP> , </XMP test> \r\n231.<!DOCTYPE> , <!DOCTYPE test> \r\n232.</!DOCTYPE> , </!DOCTYPE test> \r\n233.<!-- test -->\r\n234.</!-- test -->', '2012-11-03 21:26:00', '2012-11-03 21:26:28', '2012-11-03 21:40:06', NULL),
(5, '　「ｉＰｈｏｎｅ５じゃない」　父親殴った息子を逮捕', '世田谷署は２１日、父親を鈍器のようなもので殴ったとして同区内に住む２２歳の息子を傷害の疑いで逮捕した。父親は頭部を強く打って出血し、額を６針縫う全治１週間の軽傷を負った。\r\n\r\n　調べによると、男は２０日夜、アップル社が翌２１日に発売する最新スマートフォン「ｉＰｈｏｎｅ５」を買ってくるよう父親（４９）に依頼。父親はこの日の会社を欠勤し、２１日午前８時の開店に向け、深夜１時から都内の販売店に並んでいた。\r\n\r\n　だが午前９時、父親がｉＰｈｏｎｅ５とは異なるスマートフォンを買って帰宅したため、男は激怒。朝食中のテーブルに置いてあったアイスピック（長さ１５センチ）の横にあったガリガリ君（コーンポタージュ味）で殴りつけた後、折れたガリガリ君を捨て、さらにあずきバーで何度も殴り続けた。\r\n\r\n　父親の悲鳴を聞きつけた母親が息子を止めようとしたが、制止を聞かなかったため１１０番通報。駆けつけた世田谷署員２名が傷害容疑で現行犯逮捕した。父親はあずきバーの殴打によって額から出血。６針縫う全治１週間の軽傷を負った。\r\n\r\n　世田谷署の調べに対し、息子は「ｉＰｈｏｎｅ５を買ってくるよう頼んだのに、帰ってきた父がドコモショップで買ってきたと聞き、嫌な予感がしたが、案の定サムスンのＧＡＬＡＸＹ ＳＩＩＩを買ってきたので我を忘れて殴りかかってしまった。殴る最中の記憶はなく、気がついたら血のにじんだあずきバーを握りしめ、父親が血だまりの床に倒れていた」と供述している。\r\n\r\n　負傷した父親は「深夜１時に家を出たら、ａｕとソフトバンクにはすでに行列ができていたので、誰も並んでいないドコモショップを狙った。店員にｉＰｈｏｎｅを欲しいと頼んだら、この端末を渡された」と話している。\r\n\r\n　世田谷署では、「最近、ドコモからｉＰｈｏｎｅが発売されるという根拠のない情報が飛び交っている」として注意喚起するとともに、日経新聞を安易に鵜呑みしないよう、消費者に広く呼びかけている', '2012-11-02 23:06:00', '2012-11-03 23:07:40', '2012-11-03 23:07:40', NULL),
(8, '京園大、初の明治神宮大会へ　関西地区大学野球選手権', '　関西地区大学野球選手権（関西地区大学野球連盟連絡協議会主催、朝日新聞社など後援）の最終日は４日、大阪・南港で第２代表決定戦があり、京園大が関学大を下して明治神宮大会への初出場を決めた。京園大は４回に中野（４年、京都・東山）の適時三塁打で先制。６回にも中野が適時打を放った。投げては白浜（３年、大分・明豊）が完封。最優秀選手には大体大の松葉（４年、兵庫・東洋大姫路）、敢闘賞には京園大の稲垣（４年、鳥取・米子松蔭）が選ばれた。\r\n\r\n　　　　　◇\r\n\r\n　京園大２―０関学大', '2012-11-04 19:27:00', '2012-11-04 19:28:19', '2012-11-04 19:28:19', NULL),
(9, '少数株主が泣く「割安買収」　ＭＢＯや子会社化', '　多額のキャッシュを保有する上場子会社の完全子会社化やＭＢＯ（経営陣が参加する買収）では、買収価格が安すぎるとの不満が少数株主からあがっている。\r\n\r\n　「日立金属（証券コード5486）による完全子会社化に反…\r\n\r\n この記事は会員限定です。電子版に登録すると続きをお読みいただけます。', '2012-11-04 19:28:00', '2012-11-04 19:28:59', '2012-11-04 19:28:59', NULL),
(10, '故ジョブズ氏の墓に落雷　墓石が真っ二つに', '携帯端末ｉＰｈｏｎｅなどのヒット商品を立て続けに発表し、アップル社再建の立役者となった故スティーブ・ジョブズ氏の墓に、１日、落雷があり、墓石が真っ二つに割れる被害があった。同社が満を持して発表した新機種「ｉＰａｄ　ｍｉｎｉ」の発売を翌２日に控える中の出来事だった。\r\n\r\n　現地メディアが相次いで伝えた。昨年１０月に亡くなったジョブズ氏の遺体は、現在カリフォルニア州に建設中の新社屋のちょうど中心部分に埋葬されている。\r\n\r\n　「ｉＴｏｍｂ（アイトゥーム）」と呼ばれる氏の墓は「自分が死んだあとも、社員一人一人を支配下に置いて監視しつづけたい」という生前の意向に従い、一望監視が可能なパノプティコン構造の中心に自らの墓石を配置しているのが特徴だ。ここには氏が亡くなってから１年が経った現在でも多くの人々が追悼に訪れており、死後もなお、その存在の大きさをうかがわせている。\r\n\r\n　落雷が起きたのは現地時間１日の午後８時ごろ。近隣住民によると、雲一つない夜空に突然暗雲が立ち込め、スコールのような激しい雨とともに、耳をつんざくほどの大きな落雷音が鳴り響いたという。落雷はこの１度だけで、その後まもなく雨は止み、再び穏やかな天気に戻った。ゲリラ豪雨の一種と見られる。\r\n\r\n　その後まもなく、ｉＴｏｍｂを訪れた男性社員が墓石が真っ二つに割れていることに気づき、地元警察に連絡した。調査に当たった警察は「墓石周辺の地面に何かを掘り起こしたような穴が見られたものの、墓石の損傷自体は落雷によるもので、何ら事件性はない」と発表している。\r\n\r\n　また現地メディアは、墓石の修理業者の話として、墓石の破片を回収する際に掘り起こした棺おけが不気味にに軽かったという証言も伝えた。\r\n\r\n　同社は翌２日にｉＰａｄ　ｍｉｎｉを発売するが、ジョブズ氏は生前小型のｉＰａｄについて「７インチサイズを使うには指をヤスリで削る必要がある」として、その存在を強く否定していたことが知られており、端末についての評価は今のところ賛否両論だ。', '2012-11-04 19:29:00', '2012-11-04 19:29:36', '2012-11-04 19:29:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE IF NOT EXISTS `article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `article_id` int(11) NOT NULL COMMENT '記事のID',
  `tag_id` int(11) NOT NULL COMMENT 'タグのID',
  `created` datetime DEFAULT NULL COMMENT '作成日時',
  `updated` datetime DEFAULT NULL COMMENT '更新日時',
  `deleted` datetime DEFAULT NULL COMMENT '削除日時',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='記事のタグ' AUTO_INCREMENT=20 ;

--
-- Dumping data for table `article_tags`
--

INSERT INTO `article_tags` (`id`, `article_id`, `tag_id`, `created`, `updated`, `deleted`) VALUES
(11, 7, 1, NULL, NULL, NULL),
(9, 5, 6, NULL, NULL, NULL),
(13, 6, 4, NULL, NULL, NULL),
(10, 6, 1, NULL, NULL, NULL),
(8, 4, 6, NULL, NULL, NULL),
(12, 5, 4, NULL, NULL, NULL),
(7, 5, 3, NULL, NULL, NULL),
(14, 7, 4, NULL, NULL, NULL),
(15, 8, 1, NULL, NULL, NULL),
(16, 9, 2, NULL, NULL, NULL),
(17, 9, 4, NULL, NULL, NULL),
(18, 10, 3, NULL, NULL, NULL),
(19, 10, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'タグの名前',
  `created` datetime DEFAULT NULL COMMENT '作成日時',
  `updated` datetime DEFAULT NULL COMMENT '更新日時',
  `deleted` datetime DEFAULT NULL COMMENT '削除日時',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='タグ' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created`, `updated`, `deleted`) VALUES
(1, '朝日新聞', '2012-11-03 18:15:18', '2012-11-03 18:15:18', NULL),
(2, '日経新聞', '2012-11-03 18:17:41', '2012-11-03 18:17:41', NULL),
(3, '虚構新聞', '2012-11-03 18:17:56', '2012-11-03 18:17:56', NULL),
(4, '新聞記事', '2012-11-03 19:38:03', '2012-11-04 19:27:00', NULL),
(5, '<test>', '2012-11-03 21:41:27', '2012-11-03 21:41:27', NULL),
(6, 'Sample', '2012-11-03 23:14:06', '2012-11-03 23:14:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ユーザー名',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'パスワード',
  `created` datetime DEFAULT NULL COMMENT '作成日時',
  `updated` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ユーザー' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `updated`) VALUES
(1, 'user', 'a0ea00574d472826fbd22add27044f152ff87926', '2012-11-03 17:43:29', '2012-11-03 17:43:33');

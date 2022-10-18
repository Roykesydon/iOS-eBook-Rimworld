//
//  FactionDetail.swift
//  HW2
//
//  Created by roykesydone on 2022/10/15.
//

import Foundation

struct Pawn: Identifiable{
    let id = UUID()
    var name: String
    var image: String
    var combatPower: String
    var weapon: String
}

struct FactionDetail: Identifiable{
    let id = UUID()
    var name: String = "預設名稱"
    var engName: String = "default name"
    var image: String = ""
    var introduction: String = ""
    var lore: [[String]] = [[]]
    var pawns: [Pawn] = []
}

let factionTable = [
    FactionDetail(
        name:"部落", engName: "Tribes", image:"tribe-image", introduction: "這些人在這裡已經很久了。也許他們的祖先在一千年前就在這裡墜毀了，或者他們在一場毀滅文明的大災難中倖存下來。無論如何，部落是一群以游牧民族為生的人，他們以土地為生。", lore:[["背景","部落是新石器時代科技級別的 派系，但他們實際上使用中世紀級別的裝備。基礎遊戲中的部落分為三種類型：溫和部落，一開始是中立的；兇猛部落，一開始是敵對的，但可以成為朋友；野蠻部落，永久敵對。 Ideology DLC 中包含兩個額外的部落變體：食人部落，一個痴迷於吃人肉的永久敵對部落，以及裸體部落，一個開始中立且不喜歡穿衣服的部落。這個派系的人通常很難招募（難度 80+），除非你也是部落派系。由於科技級別低，他們看起來可能不是很強大，但他們用人數上的優勢彌補了這一點。他們可以輕易突破你的防禦。處理他們的建議方法是使用範圍武器，比如世界末日火箭發射器或破片手榴彈。也建議使用快速射擊武器，例如迷你砲和重型 SMG 。這個派系是一個強大的盟友或敵人，也可以用這派系作為你的開局。他們可能沒有海盜那麼危險，但絕非螻蟻。"]],
        pawns: [
            Pawn(name:"懺悔者", image:"tribe-pawn-1", combatPower: "10", weapon: "短刀"),
            Pawn(name:"弓箭手", image:"tribe-pawn-2", combatPower: "10", weapon: "短弓"),
            Pawn(name:"戰士", image:"tribe-pawn-3", combatPower: "10", weapon: "ikwa"),
            Pawn(name:"獵人", image:"tribe-pawn-4", combatPower: "10", weapon: "反曲弓"),
            Pawn(name:"狂戰士", image:"tribe-pawn-5", combatPower: "10", weapon: "矛"),
            Pawn(name:"重型弓箭手", image:"tribe-pawn-6", combatPower: "10", weapon: "巨弓"),
            Pawn(name:"弓箭手首領", image:"tribe-pawn-7", combatPower: "10", weapon: "巨弓"),
            Pawn(name:"狂戰士首領", image:"tribe-pawn-8", combatPower: "10", weapon: "長劍"),
        ]),
    FactionDetail(
        name:"異鄉人", engName: "Outlanders", image:"outlanders-image", introduction: "這些人在這裡生活了幾十年或幾個世紀，已經失去了將他們帶到這個世界的多數科技。他們通常使用簡單的機械技術來工作，並用先進的火藥武器保護自己。他們關心更加實際的問題，比如貿易、信任c和生存。", lore:[["背景","外地人是遍布在 rimworld 的工業時代科技級別的 派系。有兩種類型的異鄉人：平民異鄉人，一開始是中立的，粗暴的異鄉人，一開始是敵對的，但可以成為朋友。外地人使用與海盜相同的裝備和科技，但他們的行為不同。與海盜不同，異鄉人可以通過送禮物、交易或釋放囚犯來結為盟友。由於他們的性質與你的殖民地相似，他們可以被視為標準派系。他們經常使用與普通海盜相似的裝備和戰術，但很少使用狙擊步槍等高級裝備。對他們好，你會得到回報，但激怒他們，你會得到另一個海盜組織。"]],
        pawns: [
            Pawn(name:"村民", image:"outlander-pawn-1", combatPower: "35", weapon: "自動手槍"),
            Pawn(name:"城鎮守衛", image:"outlander-pawn-2", combatPower: "55", weapon: "栓動步槍"),
            Pawn(name:"城鎮議員", image:"outlander-pawn-3", combatPower: "40", weapon: "自動手槍"),
            Pawn(name:"擲彈兵", image:"outlander-pawn-4", combatPower: "65", weapon: "破片手榴彈"),
            Pawn(name:"EMP擲彈兵", image:"outlander-pawn-5", combatPower: "65", weapon: "電磁脈衝手榴彈"),
            Pawn(name:"僱傭槍手", image:"outlander-pawn-6", combatPower: "90", weapon: "突擊步槍"),
            Pawn(name:"僱傭狙擊手", image:"outlander-pawn-7", combatPower: "110", weapon: "狙擊步槍"),
            Pawn(name:"僱傭斬擊者", image:"outlander-pawn-8", combatPower: "150", weapon: "高級長劍"),
            Pawn(name:"重型傭兵", image:"outlander-pawn-9", combatPower: "150", weapon: "末日火箭發射器"),
            Pawn(name:"精英傭兵", image:"outlander-pawn-10", combatPower: "150", weapon: "突擊步槍"),
            Pawn(name:"傭兵首領", image:"outlander-pawn-11", combatPower: "150", weapon: "突擊步槍"),
        ]),
    FactionDetail(
        name:"海盜", engName: "Pirates", image:"pirate-image", introduction: "一個鬆散的海盜組織聯盟，他們主要與異鄉人作戰，而非互相爭鬥。海盜不播種，不建造，也很少貿易。在重視個人力量和冷酷無情的血腥與榮譽文化的推動下，他們通過襲擊和搶劫更有生產力的鄰居來滋養自己。他們的科技水準主要取決於他們最近從誰那裡偷了東西。他們大多攜帶火藥武器，但也有些人更喜歡近距離武器。", lore:[["背景","海盜是一個太空時代科技級別的 派系。他們在技術上相對先進，永遠充滿敵意，並且出現在每場遊戲中。這使它們成為主要人形威脅之一，因為除非每個海盜基地都被消滅，否則他們將在整個遊戲中突襲玩家。儘管海盜有太空時代的科技，外鄉人則是工業時代的科技，但他們的科技和裝備大致相似。在某些方面，這使他們成為等同於外鄉人組成的野蠻部落變體。"]],
        pawns: [
            Pawn(name:"流浪者", image:"pirate-pawn-1", combatPower: "35", weapon: "短刀"),
            Pawn(name:"清道夫槍手", image:"pirate-pawn-2", combatPower: "45", weapon: "栓動步槍"),
            Pawn(name:"清道夫戰士", image:"pirate-pawn-3", combatPower: "45", weapon: "狼牙棒"),
            Pawn(name:"海盜槍手", image:"pirate-pawn-4", combatPower: "65", weapon: "自動手槍"),
            
            
            Pawn(name:"擲彈兵", image:"outlander-pawn-4", combatPower: "65", weapon: "破片手榴彈"),
            Pawn(name:"EMP擲彈兵", image:"outlander-pawn-5", combatPower: "65", weapon: "電磁脈衝手榴彈"),
            Pawn(name:"僱傭槍手", image:"outlander-pawn-6", combatPower: "90", weapon: "突擊步槍"),
            Pawn(name:"僱傭狙擊手", image:"outlander-pawn-7", combatPower: "110", weapon: "狙擊步槍"),
            Pawn(name:"僱傭斬擊者", image:"outlander-pawn-8", combatPower: "150", weapon: "高級長劍"),
            Pawn(name:"重型傭兵", image:"outlander-pawn-9", combatPower: "150", weapon: "末日火箭發射器"),
            Pawn(name:"精英傭兵", image:"outlander-pawn-10", combatPower: "150", weapon: "突擊步槍"),
            Pawn(name:"傭兵首領", image:"outlander-pawn-11", combatPower: "150", weapon: "突擊步槍"),
        ]),
    FactionDetail(
        name:"帝國", engName: "Empire", image:"empire-image", introduction: "由 Sophiamunda 星球的超科技難民組成。他們的文化基於榮譽準則、嚴格的階級制度和強制的社會停滯。這些是經歷 Sophiamunda 星球大災變的倖存者。他們用殘餘艦隊逃到了 rimworld。儘管損失了許多，但他們的船隻和科技使他們依舊強大。他們拒絕與任何缺乏適當王室頭銜的人進行交易。", lore:[["背景","帝國是皇室DLC新增的超科技 派系，擁有多種獨特的機制。他們可以有一個希臘主題的隨機名稱，並在名字結尾加上“帝國”。你可以選擇加入帝國，透過貴族等級強化您的殖民者，並獲得強大的超能力或高科技裝備；或者，你可以與他們戰鬥並直接掠奪他們的裝備。帝國商隊、商船和定居點只能與擁有騎士或更高頭銜的殖民者進行交易。"]],
        pawns: [
            Pawn(name:"帝國公民", image:"empire-pawn-1", combatPower: "30", weapon: "衝鋒槍"),
            Pawn(name:"帝國商人", image:"empire-pawn-2", combatPower: "40", weapon: "自動手槍"),
            Pawn(name:"勞動者", image:"empire-pawn-3", combatPower: "30", weapon: "-"),
            Pawn(name:"騎兵", image:"empire-pawn-4", combatPower: "60", weapon: "突擊步槍"),
            Pawn(name:"門衛", image:"empire-pawn-5", combatPower: "100", weapon: "狙擊步槍"),
            Pawn(name:"鬥士", image:"empire-pawn-6", combatPower: "100", weapon: "宙斯之槌"),
            Pawn(name:"重裝騎兵", image:"empire-pawn-7", combatPower: "150", weapon: "衝鋒槍"),
            Pawn(name:"星光守望者", image:"empire-pawn-8", combatPower: "175", weapon: "等離子劍"),
            Pawn(name:"恆星後衛", image:"empire-pawn-9", combatPower: "175", weapon: "衝鋒槍"),
            Pawn(name:"賜予者", image:"empire-pawn-10", combatPower: "150", weapon: "法杖"),
        ]),
    FactionDetail(
        name:"機械族", engName: "Mechanoids", image:"mechanoids-image", introduction: "為家庭、工業或軍事目的而製造的自主智能機器人。僅適用於先進的文化，因為需要非常復雜的人工智慧才能控制它們。", lore:[["背景","來歷不明的殺手機器人。隱藏在古老建築中、塵土之下或甚至海底，機械族可以自我維護數千年。這群機甲看似目的統一，行動上卻並不協調。雖然當地學者認為它們是古代戰爭遺留下來的自動武器，但部落傳說將它們描述為某個沈睡中的神明的惡魔僕從。根據傳說，機械族是為各種目的而建造的自主智能機器人。建造它們所需的技術因機器人的複雜性而異，擁有太空時代科技的文明能夠構建簡單的機械機器人用於陪伴、戰鬥和勞動，只有閃光世界能夠建造更高級的準意識版本，不過其他類型的仍然由建築師建造和使用。然而，在遊戲中，只能看到來自單一的、有點神秘的來源的戰鬥機械人。有一些跡象表明，遊戲中看到的機械族可能是由一支古代軍隊建造或與之結盟的，也許是古代派系的軍隊。無論如何，他們已經失去了他們可能擁有的任何忠誠，現在對所有非機械族的派系都懷有敵意。蟲族經過基因工程改造以對抗機械類入侵，這兩個派系總是相互敵對。"]],
        pawns: [
            Pawn(name:"鐮刀", image:"mechanoid-pawn-1", combatPower: "150", weapon: "刀鋒"),
            Pawn(name:"槍手", image:"mechanoid-pawn-2", combatPower: "150", weapon: "充能槍"),
            Pawn(name:"蜈蚣", image:"mechanoid-pawn-3", combatPower: "400", weapon: "重型充能砲"),
            Pawn(name:"針槍手", image:"mechanoid-pawn-4", combatPower: "110", weapon: "針槍"),
            Pawn(name:"白蟻", image:"mechanoid-pawn-5", combatPower: "110", weapon: "重擊砲"),
        ]),
    FactionDetail(
        name:"蟲族", engName: "Insectoids", image:"insectoids-image", introduction: "這些巨大且類似昆蟲的生物生活在地下，當被噪音或信號吸引時，它們會挖洞攻擊。曾經有來自 Sorne 星球的星際企業家設法捕獲、基因改造和培養這些昆蟲群落以用作武器。目前尚不清楚是誰在這個星球上放置了 Sorne 昆蟲，但牠們生活在這裡，而且和以往一樣危險。", lore:[["背景","蟲族是一個由基因工程改造的類昆蟲動物組成的族群，它們在某種程度上就像一個永久的敵對派系。居住在這個派系中的蟲族是移動緩慢、只能進行近戰的動物，它們本身並不總是自然而然地對殖民者懷有敵意，但在出沒期間遇到任何殖民地時都可能構成嚴重的意外威脅。蟲族是動物。它們的毒性敏感度為 0，使它們免疫任何來源的毒性累積。宰殺時，會產生出昆蟲肉，人類吃起來會感到噁心。蟲族可以被馴服，但由於多數時候是敵對生物，這是一項非常艱鉅的任務。"]],
        pawns: [
            Pawn(name:"大型甲蟲", image:"insectoid-pawn-1", combatPower: "40", weapon: "-"),
            Pawn(name:"巨型蜘蛛", image:"insectoid-pawn-2", combatPower: "150", weapon: "-"),
            Pawn(name:"斯佩羅佩德", image:"insectoid-pawn-3", combatPower: "75", weapon: "-"),
        ]),
    FactionDetail(
        name:"先祖", engName: "Ancients", image:"ancients-image", introduction: "資料已不可考", lore:[["背景","先祖是半隱藏的太空時代科技級別 派系，只會出現在古代神殿中的古代隱眠棺材。先祖有兩個派系：中立先祖，開始態度是中立，敵對先祖，態度總是敵對。所有先祖都將屬於這兩個派系之一。"]],
        pawns: [
            Pawn(name:"古代士兵", image:"ancient-pawn-1", combatPower: "100", weapon: "突擊步槍"),
        ])
]

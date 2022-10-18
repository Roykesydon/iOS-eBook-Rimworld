//
//  DLC.swift
//  HW2
//
//  Created by roykesydone on 2022/10/15.
//

import Foundation



struct DLCDetail: Identifiable{
    let id = UUID()
    var name: String = "DLC name"
    var introduction: String = ""
    var lore: [[String]] = [[]]
}

let DLCTable = [
    DLCDetail(
        name:"Royalty", introduction: "這些人在這裡已經很久了。也許他們的祖先在一千年前就在這裡墜毀了，或者他們在一場毀滅文明的大災難中倖存下來。無論如何，部落是一群以游牧民族為生的人，他們以土地為生。", lore:[["背景","部落是新石器時代科技級別的 派系，但他們實際上使用中世紀級別的裝備。基礎遊戲中的部落分為三種類型：溫和部落，一開始是中立的；兇猛部落，一開始是敵對的，但可以成為朋友；野蠻部落，永久敵對。 Ideology DLC 中包含兩個額外的部落變體：食人部落，一個痴迷於吃人肉的永久敵對部落，以及裸體部落，一個開始中立且不喜歡穿衣服的部落。這個派系的人通常很難招募（難度 80+），除非你也是部落派系。由於科技級別低，他們看起來可能不是很強大，但他們用人數上的優勢彌補了這一點。他們可以輕易突破你的防禦。處理他們的建議方法是使用範圍武器，比如世界末日火箭發射器或破片手榴彈。也建議使用快速射擊武器，例如迷你砲和重型 SMG 。這個派系是一個強大的盟友或敵人，也可以用這派系作為你的開局。他們可能沒有海盜那麼危險，但絕非螻蟻。"]]
    ),
    DLCDetail(
        name:"Ideology", introduction: "這些人在這裡已經很久了。也許他們的祖先在一千年前就在這裡墜毀了，或者他們在一場毀滅文明的大災難中倖存下來。無論如何，部落是一群以游牧民族為生的人，他們以土地為生。", lore:[["背景","部落是新石器時代科技級別的 派系，但他們實際上使用中世紀級別的裝備。基礎遊戲中的部落分為三種類型：溫和部落，一開始是中立的；兇猛部落，一開始是敵對的，但可以成為朋友；野蠻部落，永久敵對。 Ideology DLC 中包含兩個額外的部落變體：食人部落，一個痴迷於吃人肉的永久敵對部落，以及裸體部落，一個開始中立且不喜歡穿衣服的部落。這個派系的人通常很難招募（難度 80+），除非你也是部落派系。由於科技級別低，他們看起來可能不是很強大，但他們用人數上的優勢彌補了這一點。他們可以輕易突破你的防禦。處理他們的建議方法是使用範圍武器，比如世界末日火箭發射器或破片手榴彈。也建議使用快速射擊武器，例如迷你砲和重型 SMG 。這個派系是一個強大的盟友或敵人，也可以用這派系作為你的開局。他們可能沒有海盜那麼危險，但絕非螻蟻。"]]
    ),
    DLCDetail(
        name:"Biotech", introduction: "這些人在這裡已經很久了。也許他們的祖先在一千年前就在這裡墜毀了，或者他們在一場毀滅文明的大災難中倖存下來。無論如何，部落是一群以游牧民族為生的人，他們以土地為生。", lore:[["背景","部落是新石器時代科技級別的 派系，但他們實際上使用中世紀級別的裝備。基礎遊戲中的部落分為三種類型：溫和部落，一開始是中立的；兇猛部落，一開始是敵對的，但可以成為朋友；野蠻部落，永久敵對。 Ideology DLC 中包含兩個額外的部落變體：食人部落，一個痴迷於吃人肉的永久敵對部落，以及裸體部落，一個開始中立且不喜歡穿衣服的部落。這個派系的人通常很難招募（難度 80+），除非你也是部落派系。由於科技級別低，他們看起來可能不是很強大，但他們用人數上的優勢彌補了這一點。他們可以輕易突破你的防禦。處理他們的建議方法是使用範圍武器，比如世界末日火箭發射器或破片手榴彈。也建議使用快速射擊武器，例如迷你砲和重型 SMG 。這個派系是一個強大的盟友或敵人，也可以用這派系作為你的開局。他們可能沒有海盜那麼危險，但絕非螻蟻。"]]
    ),
]
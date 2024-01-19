import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/features/map/home/blocs/map_cubit.dart';
import 'package:map/features/map/home/blocs/map_state.dart';
import 'package:sealed_countries/sealed_countries.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final bloc = context.read<MapCubit>();
        var result = {
          for (var v in state.selected ?? List.empty())
            (v as WorldCountry).codeShort.toLowerCase(): Colors.green
        };
        var map = toMap(result);
        return SimpleMap(
          instructions: SMapWorld.instructions,
          defaultColor: Colors.grey,
          colors: map,
          callback: (id, name, tapdetails) {
            bloc.onCountryClicked(id);
          },
        );
      },
    );
  }

  Map<String, dynamic> toMap(Map<String, Color> result) {
    return {
      "ad": result["ad"] ?? const SMapWorldColors().aD,
      "ae": result["ae"] ?? const SMapWorldColors().aE,
      "af": result["af"] ?? const SMapWorldColors().aF,
      "ag": result["ag"] ?? const SMapWorldColors().aG,
      "ai": result["ai"] ?? const SMapWorldColors().aI,
      "al": result["al"] ?? const SMapWorldColors().aL,
      "am": result["am"] ?? const SMapWorldColors().aM,
      "an": result["an"] ?? const SMapWorldColors().aN,
      "ao": result["ao"] ?? const SMapWorldColors().aO,
      "aq": result["aq"] ?? const SMapWorldColors().aQ,
      "ar": result["ar"] ?? const SMapWorldColors().aR,
      "as": result["as"] ?? const SMapWorldColors().aS,
      "at": result["at"] ?? const SMapWorldColors().aT,
      "au": result["au"] ?? const SMapWorldColors().aU,
      "aw": result["aw"] ?? const SMapWorldColors().aW,
      "ax": result["ax"] ?? const SMapWorldColors().aX,
      "az": result["az"] ?? const SMapWorldColors().aZ,
      "ba": result["ba"] ?? const SMapWorldColors().bA,
      "bb": result["bb"] ?? const SMapWorldColors().bB,
      "bd": result["bd"] ?? const SMapWorldColors().bD,
      "be": result["be"] ?? const SMapWorldColors().bE,
      "bf": result["bf"] ?? const SMapWorldColors().bF,
      "bg": result["bg"] ?? const SMapWorldColors().bG,
      "bh": result["bh"] ?? const SMapWorldColors().bH,
      "bi": result["bi"] ?? const SMapWorldColors().bI,
      "bj": result["bj"] ?? const SMapWorldColors().bJ,
      "bl": result["bl"] ?? const SMapWorldColors().bL,
      "bm": result["bm"] ?? const SMapWorldColors().bM,
      "bn": result["bn"] ?? const SMapWorldColors().bN,
      "bo": result["bo"] ?? const SMapWorldColors().bO,
      "bq": result["bq"] ?? const SMapWorldColors().bQ,
      "br": result["br"] ?? const SMapWorldColors().bR,
      "bs": result["bs"] ?? const SMapWorldColors().bS,
      "bt": result["bt"] ?? const SMapWorldColors().bT,
      "bv": result["bv"] ?? const SMapWorldColors().bV,
      "bw": result["bw"] ?? const SMapWorldColors().bW,
      "by": result["by"] ?? const SMapWorldColors().bY,
      "bz": result["bz"] ?? const SMapWorldColors().bZ,
      "ca": result["ca"] ?? const SMapWorldColors().cA,
      "cc": result["cc"] ?? const SMapWorldColors().cC,
      "cd": result["cd"] ?? const SMapWorldColors().cD,
      "cf": result["cf"] ?? const SMapWorldColors().cF,
      "cg": result["cg"] ?? const SMapWorldColors().cG,
      "ch": result["ch"] ?? const SMapWorldColors().cH,
      "ci": result["ci"] ?? const SMapWorldColors().cI,
      "ck": result["ck"] ?? const SMapWorldColors().cK,
      "cl": result["cl"] ?? const SMapWorldColors().cL,
      "cm": result["cm"] ?? const SMapWorldColors().cM,
      "cn": result["cn"] ?? const SMapWorldColors().cN,
      "co": result["co"] ?? const SMapWorldColors().cO,
      "cr": result["cr"] ?? const SMapWorldColors().cR,
      "cu": result["cu"] ?? const SMapWorldColors().cU,
      "cv": result["cv"] ?? const SMapWorldColors().cV,
      "cw": result["cw"] ?? const SMapWorldColors().cW,
      "cx": result["cx"] ?? const SMapWorldColors().cX,
      "cy": result["cy"] ?? const SMapWorldColors().cY,
      "cz": result["cz"] ?? const SMapWorldColors().cZ,
      "de": result["de"] ?? const SMapWorldColors().dE,
      "dj": result["dj"] ?? const SMapWorldColors().dJ,
      "dk": result["dk"] ?? const SMapWorldColors().dK,
      "dm": result["dm"] ?? const SMapWorldColors().dM,
      "do": result["do"] ?? const SMapWorldColors().dO,
      "dz": result["dz"] ?? const SMapWorldColors().dZ,
      "ec": result["ec"] ?? const SMapWorldColors().eC,
      "ee": result["ee"] ?? const SMapWorldColors().eE,
      "eg": result["eg"] ?? const SMapWorldColors().eG,
      "eh": result["eh"] ?? const SMapWorldColors().eH,
      "er": result["er"] ?? const SMapWorldColors().eR,
      "es": result["es"] ?? const SMapWorldColors().eS,
      "et": result["et"] ?? const SMapWorldColors().eT,
      "fi": result["fi"] ?? const SMapWorldColors().fI,
      "fj": result["fj"] ?? const SMapWorldColors().fJ,
      "fk": result["fk"] ?? const SMapWorldColors().fK,
      "fm": result["fm"] ?? const SMapWorldColors().fM,
      "fo": result["fo"] ?? const SMapWorldColors().fO,
      "fr": result["fr"] ?? const SMapWorldColors().fR,
      "ga": result["ga"] ?? const SMapWorldColors().gA,
      "gb": result["gb"] ?? const SMapWorldColors().gB,
      "gd": result["gd"] ?? const SMapWorldColors().gD,
      "ge": result["ge"] ?? const SMapWorldColors().gE,
      "gf": result["gf"] ?? const SMapWorldColors().gF,
      "gg": result["gg"] ?? const SMapWorldColors().gG,
      "gh": result["gh"] ?? const SMapWorldColors().gH,
      "gi": result["gi"] ?? const SMapWorldColors().gI,
      "gl": result["gl"] ?? const SMapWorldColors().gL,
      "gm": result["gm"] ?? const SMapWorldColors().gM,
      "gn": result["gn"] ?? const SMapWorldColors().gN,
      "gp": result["gp"] ?? const SMapWorldColors().gP,
      "gq": result["gq"] ?? const SMapWorldColors().gQ,
      "gr": result["gr"] ?? const SMapWorldColors().gR,
      "gs": result["gs"] ?? const SMapWorldColors().gS,
      "gt": result["gt"] ?? const SMapWorldColors().gT,
      "gu": result["gu"] ?? const SMapWorldColors().gU,
      "gw": result["gw"] ?? const SMapWorldColors().gW,
      "gy": result["gy"] ?? const SMapWorldColors().gY,
      "hk": result["hk"] ?? const SMapWorldColors().hK,
      "hm": result["hm"] ?? const SMapWorldColors().hM,
      "hn": result["hn"] ?? const SMapWorldColors().hN,
      "hr": result["hr"] ?? const SMapWorldColors().hR,
      "ht": result["ht"] ?? const SMapWorldColors().hT,
      "hu": result["hu"] ?? const SMapWorldColors().hU,
      "id": result["id"] ?? const SMapWorldColors().iD,
      "ie": result["ie"] ?? const SMapWorldColors().iE,
      "il": result["il"] ?? const SMapWorldColors().iL,
      "im": result["im"] ?? const SMapWorldColors().iM,
      "in": result["in"] ?? const SMapWorldColors().iN,
      "io": result["io"] ?? const SMapWorldColors().iO,
      "iq": result["iq"] ?? const SMapWorldColors().iQ,
      "ir": result["ir"] ?? const SMapWorldColors().iR,
      "is": result["is"] ?? const SMapWorldColors().iS,
      "it": result["it"] ?? const SMapWorldColors().iT,
      "je": result["je"] ?? const SMapWorldColors().jE,
      "jm": result["jm"] ?? const SMapWorldColors().jM,
      "jo": result["jo"] ?? const SMapWorldColors().jO,
      "jp": result["jp"] ?? const SMapWorldColors().jP,
      "ke": result["ke"] ?? const SMapWorldColors().kE,
      "kg": result["kg"] ?? const SMapWorldColors().kG,
      "kh": result["kh"] ?? const SMapWorldColors().kH,
      "ki": result["ki"] ?? const SMapWorldColors().kI,
      "km": result["km"] ?? const SMapWorldColors().kM,
      "kn": result["kn"] ?? const SMapWorldColors().kN,
      "kp": result["kp"] ?? const SMapWorldColors().kP,
      "kr": result["kr"] ?? const SMapWorldColors().kR,
      "kw": result["kw"] ?? const SMapWorldColors().kW,
      "ky": result["ky"] ?? const SMapWorldColors().kY,
      "kz": result["kz"] ?? const SMapWorldColors().kZ,
      "la": result["la"] ?? const SMapWorldColors().lA,
      "lb": result["lb"] ?? const SMapWorldColors().lB,
      "lc": result["lc"] ?? const SMapWorldColors().lC,
      "li": result["li"] ?? const SMapWorldColors().lI,
      "lk": result["lk"] ?? const SMapWorldColors().lK,
      "lr": result["lr"] ?? const SMapWorldColors().lR,
      "ls": result["ls"] ?? const SMapWorldColors().lS,
      "lt": result["lt"] ?? const SMapWorldColors().lT,
      "lu": result["lu"] ?? const SMapWorldColors().lU,
      "lv": result["lv"] ?? const SMapWorldColors().lV,
      "ly": result["ly"] ?? const SMapWorldColors().lY,
      "ma": result["ma"] ?? const SMapWorldColors().mA,
      "mc": result["mc"] ?? const SMapWorldColors().mC,
      "md": result["md"] ?? const SMapWorldColors().mD,
      "me": result["me"] ?? const SMapWorldColors().mE,
      "mf": result["mf"] ?? const SMapWorldColors().mF,
      "mg": result["mg"] ?? const SMapWorldColors().mG,
      "mh": result["mh"] ?? const SMapWorldColors().mH,
      "mk": result["mk"] ?? const SMapWorldColors().mK,
      "ml": result["ml"] ?? const SMapWorldColors().mL,
      "mm": result["mm"] ?? const SMapWorldColors().mM,
      "mn": result["mn"] ?? const SMapWorldColors().mN,
      "mo": result["mo"] ?? const SMapWorldColors().mO,
      "mp": result["mp"] ?? const SMapWorldColors().mP,
      "mq": result["mq"] ?? const SMapWorldColors().mQ,
      "mr": result["mr"] ?? const SMapWorldColors().mR,
      "ms": result["ms"] ?? const SMapWorldColors().mS,
      "mt": result["mt"] ?? const SMapWorldColors().mT,
      "mu": result["mu"] ?? const SMapWorldColors().mU,
      "mv": result["mv"] ?? const SMapWorldColors().mV,
      "mw": result["mw"] ?? const SMapWorldColors().mW,
      "mx": result["mx"] ?? const SMapWorldColors().mX,
      "my": result["my"] ?? const SMapWorldColors().mY,
      "mz": result["mz"] ?? const SMapWorldColors().mZ,
      "na": result["na"] ?? const SMapWorldColors().nA,
      "nc": result["nc"] ?? const SMapWorldColors().nC,
      "ne": result["ne"] ?? const SMapWorldColors().nE,
      "nf": result["nf"] ?? const SMapWorldColors().nF,
      "ng": result["ng"] ?? const SMapWorldColors().nG,
      "ni": result["ni"] ?? const SMapWorldColors().nI,
      "nl": result["nl"] ?? const SMapWorldColors().nL,
      "no": result["no"] ?? const SMapWorldColors().nO,
      "np": result["np"] ?? const SMapWorldColors().nP,
      "nr": result["nr"] ?? const SMapWorldColors().nR,
      "nu": result["nu"] ?? const SMapWorldColors().nU,
      "nz": result["nz"] ?? const SMapWorldColors().nZ,
      "om": result["om"] ?? const SMapWorldColors().oM,
      "pa": result["pa"] ?? const SMapWorldColors().pA,
      "pe": result["pe"] ?? const SMapWorldColors().pE,
      "pf": result["pf"] ?? const SMapWorldColors().pF,
      "pg": result["pg"] ?? const SMapWorldColors().pG,
      "ph": result["ph"] ?? const SMapWorldColors().pH,
      "pk": result["pk"] ?? const SMapWorldColors().pK,
      "pl": result["pl"] ?? const SMapWorldColors().pL,
      "pm": result["pm"] ?? const SMapWorldColors().pM,
      "pn": result["pn"] ?? const SMapWorldColors().pN,
      "pr": result["pr"] ?? const SMapWorldColors().pR,
      "ps": result["ps"] ?? const SMapWorldColors().pS,
      "pt": result["pt"] ?? const SMapWorldColors().pT,
      "pw": result["pw"] ?? const SMapWorldColors().pW,
      "py": result["py"] ?? const SMapWorldColors().pY,
      "qa": result["qa"] ?? const SMapWorldColors().qA,
      "re": result["re"] ?? const SMapWorldColors().rE,
      "ro": result["ro"] ?? const SMapWorldColors().rO,
      "rs": result["rs"] ?? const SMapWorldColors().rS,
      "ru": result["ru"] ?? const SMapWorldColors().rU,
      "rw": result["rw"] ?? const SMapWorldColors().rW,
      "sa": result["sa"] ?? const SMapWorldColors().sA,
      "sb": result["sb"] ?? const SMapWorldColors().sB,
      "sc": result["sc"] ?? const SMapWorldColors().sC,
      "sd": result["sd"] ?? const SMapWorldColors().sD,
      "se": result["se"] ?? const SMapWorldColors().sE,
      "sg": result["sg"] ?? const SMapWorldColors().sG,
      "sh": result["sh"] ?? const SMapWorldColors().sH,
      "si": result["si"] ?? const SMapWorldColors().sI,
      "sj": result["sj"] ?? const SMapWorldColors().sJ,
      "sk": result["sk"] ?? const SMapWorldColors().sK,
      "sl": result["sl"] ?? const SMapWorldColors().sL,
      "sm": result["sm"] ?? const SMapWorldColors().sM,
      "sn": result["sn"] ?? const SMapWorldColors().sN,
      "so": result["so"] ?? const SMapWorldColors().sO,
      "sr": result["sr"] ?? const SMapWorldColors().sR,
      "ss": result["ss"] ?? const SMapWorldColors().sS,
      "st": result["st"] ?? const SMapWorldColors().sT,
      "sv": result["sv"] ?? const SMapWorldColors().sV,
      "sx": result["sx"] ?? const SMapWorldColors().sX,
      "sy": result["sy"] ?? const SMapWorldColors().sY,
      "sz": result["sz"] ?? const SMapWorldColors().sZ,
      "tc": result["tc"] ?? const SMapWorldColors().tC,
      "td": result["td"] ?? const SMapWorldColors().tD,
      "tf": result["tf"] ?? const SMapWorldColors().tF,
      "tg": result["tg"] ?? const SMapWorldColors().tG,
      "th": result["th"] ?? const SMapWorldColors().tH,
      "tj": result["tj"] ?? const SMapWorldColors().tJ,
      "tk": result["tk"] ?? const SMapWorldColors().tK,
      "tl": result["tl"] ?? const SMapWorldColors().tL,
      "tm": result["tm"] ?? const SMapWorldColors().tM,
      "tn": result["tn"] ?? const SMapWorldColors().tN,
      "to": result["to"] ?? const SMapWorldColors().tO,
      "tr": result["tr"] ?? const SMapWorldColors().tR,
      "tt": result["tt"] ?? const SMapWorldColors().tT,
      "tv": result["tv"] ?? const SMapWorldColors().tV,
      "tw": result["tw"] ?? const SMapWorldColors().tW,
      "tz": result["tz"] ?? const SMapWorldColors().tZ,
      "ua": result["ua"] ?? const SMapWorldColors().uA,
      "ug": result["ug"] ?? const SMapWorldColors().uG,
      "um": result["um"] ?? const SMapWorldColors().uM,
      "us": result["us"] ?? const SMapWorldColors().uS,
      "uy": result["uy"] ?? const SMapWorldColors().uY,
      "uz": result["uz"] ?? const SMapWorldColors().uZ,
      "va": result["va"] ?? const SMapWorldColors().vA,
      "vc": result["vc"] ?? const SMapWorldColors().vC,
      "ve": result["ve"] ?? const SMapWorldColors().vE,
      "vg": result["vg"] ?? const SMapWorldColors().vG,
      "vi": result["vi"] ?? const SMapWorldColors().vI,
      "vn": result["vn"] ?? const SMapWorldColors().vN,
      "vu": result["vu"] ?? const SMapWorldColors().vU,
      "wf": result["wf"] ?? const SMapWorldColors().wF,
      "ws": result["ws"] ?? const SMapWorldColors().wS,
      "xk": result["xk"] ?? const SMapWorldColors().xK,
      "ye": result["ye"] ?? const SMapWorldColors().yE,
      "yt": result["yt"] ?? const SMapWorldColors().yT,
      "za": result["za"] ?? const SMapWorldColors().zA,
      "zm": result["zm"] ?? const SMapWorldColors().zM,
      "zw": result["zw"] ?? const SMapWorldColors().zW,
    };
  }
}
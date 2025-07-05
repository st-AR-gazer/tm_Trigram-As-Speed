void Update(float dt) {
    auto app = cast<CTrackMania>(GetApp());
    if (app is null) { return; }

    auto playground = cast<CSmArenaClient>(app.CurrentPlayground);
    if (playground is null || playground.Arena.Players.Length == 0) { return; }

    auto player = cast<CSmScriptPlayer>(playground.Arena.Players[0].ScriptAPI);
    if (player is null) { return; }

    string trigram;
    if (tostring(player.DisplaySpeed).Length == 1) {
        trigram = " " + player.DisplaySpeed;
    } else if (tostring(player.DisplaySpeed).Length == 2) {
        trigram = " " + player.DisplaySpeed;
    } else {
        trigram = tostring(player.DisplaySpeed);
    }

    player.Dossard_Trigram = trigram;
}

// idk, bux asked if this was possible to make, "idea is dead since the two length trigrams are not in the center"
// might be something to look into in the future, but this was mostly a POC anyway xD
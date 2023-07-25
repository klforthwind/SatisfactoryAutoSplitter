/*
Satisfactory AutoSplitter

Heavily Inspired By Epiphane's AutoSplitter: https://github.com/Epiphane/AutoSplitHelper/ 

Feel free to join the Satisfactory Speedrunners Discord for any help troubleshooting: https://discord.gg/Uj5y76NqCt
*/

state("FactoryGame-Win64-Shipping") {
    string4096 game_data : "FactoryGame-DSTelemetry-Win64-Shipping.dll", 0x002FDF98, 0x80, 0x30, 0x60, 0x0;
}

startup {
    Dictionary<string, string> tutorial = new Dictionary<string, string>() {
        // HUB Upgrades (Tier 0)
        { "HUB Upgrade 1",    "Schematic_Tutorial1_C" },
        { "HUB Upgrade 2",    "Schematic_Tutorial1_5_C" },
        { "HUB Upgrade 3",    "Schematic_Tutorial2_C" },
        { "HUB Upgrade 4",    "Schematic_Tutorial3_C" },
        { "HUB Upgrade 5",    "Schematic_Tutorial4_C" },
        { "HUB Upgrade 6",    "Schematic_Tutorial5_C" },
    };

    Dictionary<string, string> milestones = new Dictionary<string, string>() {
        // Tier 1
        { "Base Building",    "Schematic_1-1_C" },
        { "Logistics",        "Schematic_1-2_C" },
        { "Field Research",   "Schematic_1-3_C" },

        // Tier 2
        { "Part Assembly",                "Schematic_2-1_C" },
        { "Obstacle Clearing",            "Schematic_2-2_C" },
        { "Jump Pads",                    "Schematic_2-3_C" },
        { "Resource Sink Bonus Program",  "Schematic_2-5_C" },

        // Tier 3
        { "Coal Power",                   "Schematic_3-1_C" },
        { "Logistics Mk.2",               "Schematic_3-2_C" },
        { "Vehicular Transport",          "Schematic_3-3_C" },
        { "Basic Steel Production",       "Schematic_3-4_C" },

        // Tier 4
        { "Advanced Steel Production",    "Schematic_4-1_C" },
        { "Improved Melee Combat",        "Schematic_4-2_C" },
        { "Hypertubes",                   "Schematic_4-4_C" },
        { "FICSIT Blueprints",            "Schematic_4-5_C" },

        // Tier 5
        { "Oil Processing",               "Schematic_5-1_C" },
        { "Industrial Manufacturing",     "Schematic_5-2_C" },
        { "Logistics Mk.3",               "Schematic_5-3_C" },
        { "Alternative Fluid Transport",  "Schematic_5-4_C" },

        // Tier 6
        { "Expanded Power Infrastructure","Schematic_6-1_C" },
        { "Jetpack",                      "Schematic_6-2_C" },
        { "Monorail Train Technology",    "Schematic_6-3_C" },
        { "Gas Mask",                     "Schematic_6-4_C" },
        { "Pipeline Engineering Mk.2",    "Schematic_6-5_C" },
        
        // Tier 7
        { "Bauxite Refinement",           "Schematic_7-1_C" },
        { "Logistics Mk.5",               "Schematic_7-2_C" },
        { "Hazmat Suit",                  "Schematic_7-3_C" },
        { "Aeronautical Engineering",     "Schematic_7-4_C" },
        
        // Tier 8
        { "Nuclear Power",                  "Schematic_8-1_C" },
        { "Advanced Aluminum Production",   "Schematic_8-2_C" },
        { "Hover Pack",                     "Schematic_8-3_C" },
        { "Leading-edge Production",        "Schematic_8-4_C" },
        { "Particle Enrichment",            "Schematic_8-5_C" },

        // Alien Organisms
        { "Hog Research",                       "Research_ACarapace_0_C" },
        { "The Rebar Gun",                      "Research_ACarapace_2_C" },
        { "Expanded Tool Belt",                 "Research_ACarapace_3_C" },
        { "Hostile Organism Detection",         "Research_AOrganisms_2_C" },
        { "Protein Inhaler",                    "Research_AOrgans_2_C" },
        { "Inflated Pocket Dimension (Alien)",  "Research_AOrgans_3_C" },
        { "Bio-Organic Properties",             "Research_AO_DNACapsule_C" },
        { "Hatcher Research",                   "Research_AO_Hatcher_C" },
        { "Structural Analysis",                "Research_AO_Pre_Rebar_C" },
        { "Spitter Research",                   "Research_AO_Spitter_C" },
        { "Stinger Research",                   "Research_AO_Stinger_C" },

        // Caterium
        { "Caterium",               "Research_Caterium_0_C" },
        { "Caterium Ingots",        "Research_Caterium_1_C" },
        { "Quickwire",              "Research_Caterium_2_C" },
        { "Zipline",                "Research_Caterium_2_1_C" },
        { "Caterium Electronics",   "Research_Caterium_3_C" },
        { "Stun Rebar",             "Research_Caterium_3_2_C" },
        { "AI Limiter",             "Research_Caterium_4_1_C" },
        { "Smart Splitter",         "Research_Caterium_4_1_1_C" },
        { "Power Switch",           "Research_Caterium_4_1_2_C" },
        { "Power Poles Mk.2",       "Research_Caterium_4_2_C" },
        { "High-Speed Connector",   "Research_Caterium_5_C" },
        { "Supercomputer",          "Research_Caterium_6_1_C" },
        { "Power Poles Mk.3",       "Research_Caterium_6_2_C" },
        { "Bullet Guidance System", "Research_Caterium_6_3_C" },
        { "Programmable Splitter",  "Research_Caterium_7_1_C" },
        { "Geothermal Generator",   "Research_Caterium_7_2_C" },
        
        // Mycelia
        { "Mycelia",                        "Research_Mycelia_1_C" },
        { "Fabric",                         "Research_Mycelia_2_C" },
        { "Synthetic Polyester Fabric",     "Research_Mycelia_2_1_C" },
        { "Parachute",                      "Research_Mycelia_3_C" },
        { "Medical Properties",             "Research_Mycelia_4_C" },
        { "Vitamin Inhaler",                "Research_Mycelia_5_C" },
        { "Therapeutic Inhaler",            "Research_Mycelia_6_C" },
        { "Expanded Toolbelt (Mycelia)",    "Research_Mycelia_7_C" },
        { "Toxic Cellular Modification",    "Research_Mycelia_8_C" },
        
        // Nutrients
        { "Paleberry",              "Research_Nutrients_0_C" },
        { "Beryl Nut",              "Research_Nutrients_1_C" },
        { "Bacon Agaric",           "Research_Nutrients_2_C" },
        { "Nutritional Processor",  "Research_Nutrients_3_C" },
        { "Nutritional Inhaler",    "Research_Nutrients_4_C" },
        
        // Power Slugs
        { "Blue Power Slugs",       "Research_PowerSlugs_1_C" },
        { "Overclock Production",   "Research_PowerSlugs_2_C" },
        { "Slug Scanning",          "Research_PowerSlugs_3_C" },
        { "Yellow Power Shards",    "Research_PowerSlugs_4_C" },
        { "Purple Power Shards",    "Research_PowerSlugs_5_C" },
        
        // Quartz
        { "Quartz",                             "Research_Quartz_0_C" },
        { "Quartz Crystals",                    "Research_Quartz_1_1_C" },
        { "Silica",                             "Research_Quartz_1_2_C" },
        { "Blade Runners",                      "Research_Caterium_4_3_C" },
        { "Inflated Pocket Dimension (Quartz)", "Research_Caterium_3_1_C" },
        { "Crystal Oscillator",                 "Research_Quartz_2_C" },
        { "Shatter Rebar",                      "Research_Quartz_2_1_C" },
        { "The Explorer",                       "Research_Quartz_3_1_C" },
        { "Pulse Nobelisk",                     "Research_Quartz_3_4_C" },
        { "Radar Technology",                   "Research_Quartz_4_C" },
        { "Radio Signal Scanning",              "Research_Quartz_4_1_C" },

        // Sulfur
        { "Sulfur",                             "Research_Sulfur_0_C" },
        { "Black Powder",                       "Research_Sulfur_1_C" },
        { "Smokeless Powder",                   "Research_Sulfur_3_C" },
        { "The Nobelisk Detonator",             "Research_Sulfur_3_1_C" },
        { "Cluster Nobelisk",                   "Research_Sulfur_4_C" },
        { "The Rifle",                          "Research_Sulfur_4_1_C" },
        { "Explosive Rebar",                    "Research_Sulfur_4_2_C" },
        { "Expanded Toolbelt (Sulfur)",         "Research_Sulfur_5_C" },
        { "Nuclear Deterrent Development",      "Research_Sulfur_5_1_C" },
        { "Turbo Rifle Ammo",                   "Research_Sulfur_5_2_C" },
        { "Inflated Pocket Dimension (Sulfur)", "Research_Sulfur_6_C" },
        { "Compacted Coal",                     "Research_Sulfur_CompactedCoal_C" },
        { "Experimental Power Generation",      "Research_Sulfur_ExperimentalPower_C" },
        { "Turbo Fuel",                         "Research_Sulfur_TurboFuel_C" },
    };

    // Aliases
    tutorial["HUB Upgrade 4/5"] = tutorial["HUB Upgrade 5"];
    milestones["Awesome Sink"]    = milestones["Resource Sink Bonus Program"];
    milestones["Overclocking"]    = milestones["Overclock Production"];

    // Space Elevator
    Dictionary<string, string> packages = new Dictionary<string, string>() {
        { "Send Package 1", "EGP_MidGame" },
        { "Send Package 2", "EGP_LateGame" },
        { "Send Package 3", "EGP_EndGame" },
        { "Send Package 4", "EGP_FoodCourt" },
    };

    // Generic splits for Space Elevator
    List<string> special = new List<string>{ "Send Package", "Launch", "Space Elevator", "Package" };

    // Dictionary of possible tutorial splits
    vars.TutorialTriggers = new Dictionary<string, string>();
    foreach(KeyValuePair<string, string> kv in tutorial) {
        vars.TutorialTriggers[kv.Key.ToLower()] = kv.Value;
    }

    // Dictionary of possible MAM / milestone splits
    vars.MilestoneTriggers = new Dictionary<string, string>();
    foreach(KeyValuePair<string, string> kv in milestones) {
        vars.MilestoneTriggers[kv.Key.ToLower()] = kv.Value;
    }

    // Dictionary of possible package splits
    vars.PackageTriggers = new Dictionary<string, string>();
    foreach(KeyValuePair<string, string> kv in packages) {
        vars.PackageTriggers[kv.Key.ToLower()] = kv.Value;
    }

    // List of possible generic package splits
    vars.SpecialSplits = new List<string>();
    foreach(string split in special) {
        vars.SpecialSplits.Add(split.ToLower());
    }

    // Settings
    settings.Add("reset_on_exit", true, "Reset timer when exiting game");
    settings.Add("ignore_warnings", false, "Ignore warnings");
}

init {
    // Check for unrecognized split names
    List<string> unrecognizedSplits = new List<string>();
    foreach (var split in timer.Run) {
        if (
            !vars.TutorialTriggers.ContainsKey(split.Name.ToLower()) &&
            !vars.MilestoneTriggers.ContainsKey(split.Name.ToLower()) &&
            !vars.PackageTriggers.ContainsKey(split.Name.ToLower()) &&
            !vars.SpecialSplits.Contains(split.Name.ToLower())
        ) {
            unrecognizedSplits.Add(split.Name);
        }
    }

    // Warn user about unrecognized split names
    if (unrecognizedSplits.ToArray().Length > 0 && !settings["ignore_warnings"]) {
        MessageBox.Show(
            "Split name(s) not recognized: \n- " + String.Join("\n- ", unrecognizedSplits),
            "AutoSplit Warning",
            MessageBoxButtons.OK,
            MessageBoxIcon.Warning
        );
    }

    // Warn user if they have mods enabled
    if (current.game_data.Contains("\"using_mods\":true") && !settings["ignore_warnings"]) {
        MessageBox.Show(
            "You currently have mods enabled!\nYour run may be invalidated depending on which ones :(",
            "AutoSplit Warning",
            MessageBoxButtons.OK,
            MessageBoxIcon.Warning
        );
    }

    vars.SelectedTutorials = new List<string>();
    vars.SentMilestones = new List<string>();
    vars.SentPackages = new List<string>();
    vars.package_count = 0;
}

update {
    if (timer != null && timer.CurrentSplit != null) {
        var splitNameLower = timer.CurrentSplit.Name.ToLower();

        // Set tutorialTrigger if we are waiting for HUB milestone to be sent
        if (timer.CurrentSplit != null && vars.TutorialTriggers.ContainsKey(splitNameLower)) {
            vars.tutorialTrigger = vars.TutorialTriggers[splitNameLower];
        } else {
            vars.tutorialTrigger = null;
        }

        // Set milestoneTrigger if we are waiting for HUB milestone to be sent
        if (timer.CurrentSplit != null && vars.MilestoneTriggers.ContainsKey(splitNameLower)) {
            vars.milestoneTrigger = vars.MilestoneTriggers[splitNameLower];
        } else {
            vars.milestoneTrigger = null;
        }

        // Set packageTrigger if we are waiting for Space Elevator package to be sent
        if (timer.CurrentSplit != null && vars.PackageTriggers.ContainsKey(splitNameLower)) {
            vars.packageTrigger = vars.PackageTriggers[splitNameLower];
        } else {
            vars.packageTrigger = null;
        }

        // Set specialTrigger if we are waiting for a Space Elevator package to be sent (with a special word)
        if (
            timer.CurrentSplit != null && vars.packageTrigger == null &&
            vars.SpecialSplits.Contains(splitNameLower)
        ) {
            vars.specialTrigger = timer.CurrentSplit.Name;
        } else {
            vars.specialTrigger = null;
        }
    }

    // Update list of tutorials selected
    foreach (string value in vars.TutorialTriggers.Values) {
        if (
            !vars.SelectedTutorials.Contains(value) &&
            current.game_data.Contains("\"milestone\":\""+value+"\"")
        ) {
            vars.SelectedTutorials.Add(value);
        }
    }

    // Update list of milestones sent
    foreach (string value in vars.MilestoneTriggers.Values) {
        if (
            !vars.SentMilestones.Contains(value) &&
            current.game_data.Contains("\"tech_id\":\""+value+"\"")
        ) {
            vars.SentMilestones.Add(value);
        }
    }

    // Update list of packages sent
    foreach (string value in vars.PackageTriggers.Values) {
        if (!vars.SentPackages.Contains(value) && current.game_data.Contains(value)) {
            vars.SentPackages.Add(value);
        }
    }
}

start {
    // Start timer if game_phase exists
    if (
        current.game_data.Contains("\"game_phase\"") &&
        !current.game_data.Contains("\"game_phase\":\"NULL\"")
    ){
        vars.SelectedTutorials = new List<string>();
        vars.SentMilestones = new List<string>();
        vars.SentPackages = new List<string>();
        vars.package_count = 0;
        return true;
    }

    return false;
}

split {
    // Split if milestone has been sent
    string[] temp_data = current.game_data.Split(new string[] { "\"e\":[" }, StringSplitOptions.None);
    if (
        vars.tutorialTrigger != null &&
        vars.SelectedTutorials.Contains(vars.tutorialTrigger) &&
        temp_data[1].Contains("\"milestone_tier\":-1")
    ) {
        return true;
    }

    // Split if milestone has been sent
    if (vars.milestoneTrigger != null && vars.SentMilestones.Contains(vars.milestoneTrigger)) {
        return true;
    }

    // Split if Space Elevator has been sent
    if (vars.packageTrigger != null) {
        if (vars.SentPackages.Contains(vars.packageTrigger)) {
            vars.package_count += 1;
            return true;
        }
    }

    // Split if current split is a special keyword and package was sent
    if (vars.specialTrigger != null) {
        if (vars.SentPackages.Count > vars.package_count) {
            vars.package_count += 1;
            return true;
        }
    }

    return false;
}

reset {
    // Never reset if the setting is disabled
    if (!settings["reset_on_exit"]) {
        return false;
    }

    // Reset if we are not in a game session
    if (current.game_data.Contains("\"game_phase\":\"NULL\"")) {
        vars.SelectedTutorials = new List<string>();
        vars.SentMilestones = new List<string>();
        vars.SentPackages = new List<string>();
        vars.package_count = 0;
        return true;
    }

    return false;
}

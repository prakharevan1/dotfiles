import type { FormatFunction } from "@xhayper/discord-rpc";
import path from "node:path";
import fs from "node:fs";

export const EMPTY = "" as const;
export const FAKE_EMPTY = "\u200b\u200b" as const;

export const IDLE_IMAGE_KEY = "idle" as const;

export const NEOVIM_IMAGE_KEY = "neovim-logo" as const;
export const NEOVIM_IDLE_IMAGE_KEY = "idle-neovim" as const;

export const VIM_IMAGE_KEY = "vim" as const;
export const VIM_IDLE_IMAGE_KEY = "idle-neovim" as const;

export const SEND_ACTIVITY_TIMEOUT = 5000;

export const ACCEPTED_DIAGNOSTIC_SEVERITY = ["Warning", "Error"];

const NVIM_ANNOYING_PREFIX = ["nvim", "vim"];

const CUT_PREFIX_UNTIL_ANNOYING_NVIM = (fullpath: string) => {
    let prefix = "";

    for (const p of fullpath.split(path.sep)) {
        if (NVIM_ANNOYING_PREFIX.some((pp) => p.startsWith(pp))) break;
        prefix += `${p}${path.sep}`;
    }

    return prefix;
};

export const FORMAT_FUNCTION_LIST: FormatFunction[] = [
    (id: number): [string, boolean] => {
        // Windows path

        const isWindows = process.platform === "win32";

        return [isWindows ? `\\\\?\\pipe\\discord-ipc-${id}` : "", isWindows];
    },
    (id: number): [string] => {
        // macOS/Linux path

        if (process.platform === "win32") return [""];

        const prefix = '/tmp';  // Static '/tmp' used here

        return [path.join(prefix, `discord-ipc-${id}`)];
    },
    (id: number): [string] => {
        // snapstore

        if (process.platform === "win32") return [""];

        const prefix = '/tmp';  // Static '/tmp' used here

        return [path.join(prefix, "snap.discord", `discord-ipc-${id}`)];
    },
    (id: number): [string] => {
        // flatpak

        if (process.platform === "win32") return [""];

        const prefix = '/tmp';  // Static '/tmp' used here

        return [path.join(prefix, "app", "com.discordapp.Discord", `discord-ipc-${id}`)];
    }
];

export const enum REPLACE_KEYS {
    AppName = "{app_name}",
    AppVersion = "{app_version}",
    Empty = "{empty}",
    FileName = "{file_name}",
    LanguageLowerCase = "{lang}",
    LanguageTitleCase = "{Lang}",
    LanguageUpperCase = "{LANG}",
    TotalLines = "{total_lines}",
    CurrentLine = "{current_line}",
    CurrentColumn = "{current_column}",
    ProblemsCount = "{count}",
    Problems = "{problems}",
    WorkspaceFolder = "{workspace_folder}"
}

export const enum CONFIG_KEYS {
    ClientId = "clientId",
    Enabled = "enabled",
    DetailsEditing = "detailsEditing",
    DetailsViewing = "detailsViewing",
    DetailsIdling = "detailsIdling",
    LowerDetailsEditing = "lowerDetailsEditing",
    LowerDetailsViewing = "lowerDetailsViewing",
    LowerDetailsIdling = "lowerDetailsIdling",
    LowerDetailsNotFound = "lowerDetailsNotFound",
    LargeImage = "largeImage",
    LargeImageIdling = "largeImageIdling",
    SmallImage = "smallImage",
    ShowProblems = "showProblems",
    ProblemsText = "problemsText",
    WorkspaceElapsedTime = "workspaceElapsedTime",
    IgnoreWorkspaces = "ignoreWorkspaces",
    SuppressNotifications = "suppressNotifications",
    ButtonEnabled = "buttonEnabled",
    ButtonActiveLabel = "buttonActiveLabel",
    ButtonInactiveLabel = "buttonInactiveLabel",
    ButtonInactiveUrl = "buttonInactiveUrl",
    CheckIdle = "checkIdle",
    IdleTimeout = "idleTimeout",
    IdleText = "idleText",
    UseCWDAsFallback = "useCWDAsFallback"
}


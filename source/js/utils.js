var Utils = {
    request({
        url = "",
        method = "GET",
        data,
        headers = {},
        timeout = 10000,
        returnRaw = false,
    }) {
        return new Promise((resolve, reject) => {
            method = method.toUpperCase();
            $.ajax({
                url: `${url}${method === "GET" ? `${url.indexOf("?") === -1 ? "?" : "&"}_r=${Date.now()}` : ""}`,
                type: method,
                headers: {
                    // "API-Authorization": ThemeConfig.access_key || "wik",
                    "API-Authorization": "wik",
                    ...headers,
                },
                async: true,
                dataType: "json",
                timeout,
                data,
                success(res) {
                    if (returnRaw) {
                        resolve(res);
                    } else {
                        if (res.status === 200) {
                            resolve(res.data || "");
                        } else {
                            reject(res);
                        }
                    }
                },
                error(err) {
                    const errMsg = err
                        ? err.responseJSON
                            ? err.responseJSON.message
                            : "出错了！"
                        : "出错了！";
                    Qmsg.error(errMsg);
                    reject(errMsg);
                },
            });
        });
    }
}
window.Utils = Utils;
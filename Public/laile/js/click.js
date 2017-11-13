var LoanPal = {};
Number.prototype.currency || (Number.prototype.currency = function(n, t) {
    var i = "\\d(?=(\\d{" + (t || 3) + "})+" + (n > 0 ? "\\.": "$") + ")";
    return "$" + this.toFixed(Math.max(0, ~~n)).replace(new RegExp(i, "g"), "$&,")
});
String.prototype.replaceAll || (String.prototype.replaceAll = function(n, t) {
    return this.split(n).join(t)
});
LoanPal.Util = {
    AddAntiForgeryToken: function(n) {
        return n.__RequestVerificationToken = $("input[name=__RequestVerificationToken]").val(),
        n
    },
    StripCommas: function(n) {
        var t = $("." + n);
        $.each(t,
        function() {
            var n = $(this).val();
            n = n.replaceAll(",", "");
            $(this).val(n)
        })
    }
};
LoanPal.Site = function(n) {
    var i = n(".js-contact-us-module"),
    r = i.find(".js-chat-link"),
    f = i.find(".js-chat-panel-link"),
    u = i.find(".js-chat-panel"),
    x,
    t;
    r.on("click",
    function(n) {
        n.preventDefault();
        r.hide();
        u.show()
    });
    f.on("click",
    function(n) {
        n.preventDefault();
        r.show();
        u.hide()
    });
    document.querySelector("#nav-toggle").addEventListener("click",
    function(t) {
        t.preventDefault();
        this.classList.toggle("active");
        n(this).parents(".main-nav").toggleClass("active")
    });

    document.querySelector("#nav-btn-primary").addEventListener("click",
    function(x) {
        x.preventDefault();
        this.classList.toggle("active");
    });



    t = document.getElementById("lp-video");
    n("#lp-video").hover(function() {
        t.hasAttribute("controls") ? t.removeAttribute("controls") : t.setAttribute("controls", "controls")
    });
    n("input.numberAddComma").on("keyup",
    function(t) {
        t.which >= 37 && t.which <= 40 && t.preventDefault();
        n(this).val(function(n, t) {
            return t.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",")
        })
    });
    n(document).ready(function() {
        n(".js-currencyFormat").each(function(t, i) {
            var r = n(i).text();
            r = Number(r).currency(2);
            n(i).text(r)
        })
    })
} (jQuery)
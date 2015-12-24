!function(e,n,t){function s(e,n){return typeof e===n}function r(){var e,n,t,r,o,i,a;for(var l in y)if(y.hasOwnProperty(l)){if(e=[],n=y[l],n.name&&(e.push(n.name.toLowerCase()),n.options&&n.options.aliases&&n.options.aliases.length))for(t=0;t<n.options.aliases.length;t++)e.push(n.options.aliases[t].toLowerCase());for(r=s(n.fn,"function")?n.fn():n.fn,o=0;o<e.length;o++)i=e[o],a=i.split("."),1===a.length?w[a[0]]=r:(!w[a[0]]||w[a[0]]instanceof Boolean||(w[a[0]]=new Boolean(w[a[0]])),w[a[0]][a[1]]=r),S.push((r?"":"no-")+a.join("-"))}}function o(e){var n=x.className,t=w._config.classPrefix||"";if(b&&(n=n.baseVal),w._config.enableJSClass){var s=new RegExp("(^|\\s)"+t+"no-js(\\s|$)");n=n.replace(s,"$1"+t+"js$2")}w._config.enableClasses&&(n+=" "+t+e.join(" "+t),b?x.className.baseVal=n:x.className=n)}function i(){return"function"!=typeof n.createElement?n.createElement(arguments[0]):b?n.createElementNS.call(n,"http://www.w3.org/2000/svg",arguments[0]):n.createElement.apply(n,arguments)}function a(e,n){if("object"==typeof e)for(var t in e)_(e,t)&&a(t,e[t]);else{e=e.toLowerCase();var s=e.split("."),r=w[s[0]];if(2==s.length&&(r=r[s[1]]),"undefined"!=typeof r)return w;n="function"==typeof n?n():n,1==s.length?w[s[0]]=n:(!w[s[0]]||w[s[0]]instanceof Boolean||(w[s[0]]=new Boolean(w[s[0]])),w[s[0]][s[1]]=n),o([(n&&0!=n?"":"no-")+s.join("-")]),w._trigger(e,n)}return w}function l(e,n){return!!~(""+e).indexOf(n)}function f(){var e=n.body;return e||(e=i(b?"svg":"body"),e.fake=!0),e}function u(e,t,s,r){var o,a,l,u,c="modernizr",d=i("div"),p=f();if(parseInt(s,10))for(;s--;)l=i("div"),l.id=r?r[s]:c+(s+1),d.appendChild(l);return o=i("style"),o.type="text/css",o.id="s"+c,(p.fake?p:d).appendChild(o),p.appendChild(d),o.styleSheet?o.styleSheet.cssText=e:o.appendChild(n.createTextNode(e)),d.id=c,p.fake&&(p.style.background="",p.style.overflow="hidden",u=x.style.overflow,x.style.overflow="hidden",x.appendChild(p)),a=t(d,e),p.fake?(p.parentNode.removeChild(p),x.style.overflow=u,x.offsetHeight):d.parentNode.removeChild(d),!!a}function c(e){return e.replace(/([A-Z])/g,function(e,n){return"-"+n.toLowerCase()}).replace(/^ms-/,"-ms-")}function d(n,s){var r=n.length;if("CSS"in e&&"supports"in e.CSS){for(;r--;)if(e.CSS.supports(c(n[r]),s))return!0;return!1}if("CSSSupportsRule"in e){for(var o=[];r--;)o.push("("+c(n[r])+":"+s+")");return o=o.join(" or "),u("@supports ("+o+") { #modernizr { position: absolute; } }",function(e){return"absolute"==getComputedStyle(e,null).position})}return t}function p(e){return e.replace(/([a-z])-([a-z])/g,function(e,n,t){return n+t.toUpperCase()}).replace(/^-/,"")}function A(e,n,r,o){function a(){u&&(delete j.style,delete j.modElem)}if(o=s(o,"undefined")?!1:o,!s(r,"undefined")){var f=d(e,r);if(!s(f,"undefined"))return f}for(var u,c,A,h,m,g=["modernizr","tspan"];!j.style;)u=!0,j.modElem=i(g.shift()),j.style=j.modElem.style;for(A=e.length,c=0;A>c;c++)if(h=e[c],m=j.style[h],l(h,"-")&&(h=p(h)),j.style[h]!==t){if(o||s(r,"undefined"))return a(),"pfx"==n?h:!0;try{j.style[h]=r}catch(v){}if(j.style[h]!=m)return a(),"pfx"==n?h:!0}return a(),!1}function h(e,n){return function(){return e.apply(n,arguments)}}function m(e,n,t){var r;for(var o in e)if(e[o]in n)return t===!1?e[o]:(r=n[e[o]],s(r,"function")?h(r,t||n):r);return!1}function g(e,n,t,r,o){var i=e.charAt(0).toUpperCase()+e.slice(1),a=(e+" "+z.join(i+" ")+i).split(" ");return s(n,"string")||s(n,"undefined")?A(a,n,r,o):(a=(e+" "+O.join(i+" ")+i).split(" "),m(a,n,t))}function v(e,n,s){return g(e,t,t,n,s)}var y=[],C={_version:"3.2.0",_config:{classPrefix:"",enableClasses:!0,enableJSClass:!0,usePrefixes:!0},_q:[],on:function(e,n){var t=this;setTimeout(function(){n(t[e])},0)},addTest:function(e,n,t){y.push({name:e,fn:n,options:t})},addAsyncTest:function(e){y.push({name:null,fn:e})}},w=function(){};w.prototype=C,w=new w;var _,S=[],x=n.documentElement,b="svg"===x.nodeName.toLowerCase();!function(){var e={}.hasOwnProperty;_=s(e,"undefined")||s(e.call,"undefined")?function(e,n){return n in e&&s(e.constructor.prototype[n],"undefined")}:function(n,t){return e.call(n,t)}}(),C._l={},C.on=function(e,n){this._l[e]||(this._l[e]=[]),this._l[e].push(n),w.hasOwnProperty(e)&&setTimeout(function(){w._trigger(e,w[e])},0)},C._trigger=function(e,n){if(this._l[e]){var t=this._l[e];setTimeout(function(){var e,s;for(e=0;e<t.length;e++)(s=t[e])(n)},0),delete this._l[e]}},w._q.push(function(){C.addTest=a}),w.addAsyncTest(function(){var e,n,t,s=i("img"),r="sizes"in s;!r&&"srcset"in s?(n="data:image/gif;base64,R0lGODlhAgABAPAAAP///wAAACH5BAAAAAAALAAAAAACAAEAAAICBAoAOw==",e="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",t=function(){a("sizes",2==s.width)},s.onload=t,s.onerror=t,s.setAttribute("sizes","9px"),s.srcset=e+" 1w,"+n+" 8w",s.src=e):a("sizes",r)});var T="CSS"in e&&"supports"in e.CSS,E="supportsCSS"in e;w.addTest("supports",T||E),w.addTest("srcset","srcset"in i("img"));var P="Moz O ms Webkit",z=C._config.usePrefixes?P.split(" "):[];C._cssomPrefixes=z;var B={elem:i("modernizr")};w._q.push(function(){delete B.elem});var j={style:B.elem.style};w._q.unshift(function(){delete j.style});var O=C._config.usePrefixes?P.toLowerCase().split(" "):[];C._domPrefixes=O,C.testAllProps=g,C.testAllProps=v,w.addTest("flexbox",v("flexBasis","1px",!0)),r(),o(S),delete C.addTest,delete C.addAsyncTest;for(var L=0;L<w._q.length;L++)w._q[L]();e.Modernizr=w}(window,document);
<!DOCTYPE html>
<html lang="de" class="no-js">
<head>
  <meta charset="utf-8">
  <title>Sean | Framework</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="robots" content="index, follow" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="Olaf Gleba, <og@olafgleba.de>" />
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="assets/css/styles.min.css">

  <script src="assets/libs/vendor/modernizr-custom.min.js" async=""></script>

  <script src="https://use.typekit.net/tos1rrw.js"></script>
  <script>try{Typekit.load();}catch(e){}</script>

  <script src="assets/libs/vendor/plugins.images.min.js" async=""></script>
</head>

<body id="totop" class="framework">

  <div class="page">

    <h1>Component: Breadcrumb</h1>

    <ul class="c-breadcrumb">
      <li class="c-breadcrumb__root">Root</li>
      <li class="c-breadcrumb"><a href="#">Level 1</a></li>
      <li><a href="#">Level 2</a></li>
      <li class="c-breadcrumb__current">Level 3 (current)</li>
    </ul>


    <h1>.media</h1>

    <div class="media">
      <div class="media__img">img
      <p>caption</p></div>
      <div class="media__content"><p>some content</p></div>
    </div>


    <h1>Lists</h1>

    <h2>Modifier:</h2>
    <p>Diese Modifier sind auf alle Listenkomponenten (<i>außer wo angemerkt</i>) anwendbar.</p>
    <ul class="list-bare">
      <li><code>.list--text-center</code></li>
      <li><code>.list--text-left</code></li>
      <li><code>.list--text-right</code></li>
      <li><code>.list--tiny</code></li>
      <li><code>.list--small</code></li>
      <li><code>.list--large</code></li>
      <li><code>.list--huge</code></li>
    </ul>

    <div class="grid">
      <div class="grid__cell u-1/1">
        <h2>.list-bare</h2>
        <p> <code>.list-bare</code> wird i.d.R. nicht direkt eingsetzt, sondern dient als Ableitung für anderen Listen Komponenten.</p>
        <ul class="list-bare">
          <li>item</li>
          <li class="list-bare__item">item 2</li>
          <li>item 3</li>
        </ul>
      </div>

      <div class="grid__cell u-1/1">
        <h2>.list-inline-block</h2>
        <p> <code>.list-inline-block</code> richtet Zeilen horizontal aus.</p>
        <ul class="list-inline-block">
          <li>item</li>
          <li class="list-inline-block__item">item 2 hier was längeres um zu schauen ob und wann das umbricht</li>
          <li>item 3</li>
        </ul>
      </div>
      <div class="grid__cell u-1/1">
        <h2>.list-stacked</h2>
        <p> <code>.list-stacked</code> richtet Zeilen als Block vertikal aus.</p>
        <ul class="list-stacked">
          <li><a href="#">Link</a></li>
          <li class="list-stacked__item">item 2</li>
          <li>item 3</li>
          <li><a class="list-stacked__block-link" href="#">item 4 mit block link</a></li>
        </ul>
      </div>

      <div class="grid__cell u-1/1">
        <h2>.list-table</h2>
        <p> <code>.list-table</code> richtet Zeilen horizontal als Pseudo-Tabellenzeile aus. Die Zeilen nehmen die ganze Viewport-Breite ein.</p>
        <ul class="list-table list-table--blockylinks">
          <li class="list-table__item"><a href="#">item</a></li>
          <li><a href="#">item 2 hier was längeres mit einem Eigenschaftswort um zu schauen ob und wann das umbricht</a></li>
          <li class="list-table__item">item 3</li>
          <li><a class="list-table__block-link" href="#">item 4 mit block link</a></li>
        </ul>
      </div>

      <div class="grid__cell u-1/1">
        <h2>.list-chart</h2>
        <p> <code>.list-chart</code> stellt jeweils zwei listenzeilen (label/value) gegenüber. Sinnvoll für Preisangaben etc.. Auch (zumeist sinnvoller) auf <code>dl</code>-Listen anwendbar. Align Modifier (e.g. <code>--align-xxx</code>) können hier nicht genutzt werden. Die Zeilen nehmen die ganze Viewport-Breite ein.</p>
        <ul class="list-chart">
          <li class="list-chart__label">Label</li>
          <li class="list-chart__value">999 €</li>
          <li class="list-chart__label">Label</li>
          <li class="list-chart__value">999 €</li>
        </ul>
      </div>

    </div>


    <h1>respimg / layzload</h1>
    <p>Hinweis für alte Hirne: Welches Bilder initial geladen wird, ist nicht abhängig vom Browser-Viewport, sondern bezieht sich immer auf den verhandenen Platz im Kontext(!) des Bildes. Bspw. wird die kleinere Version geladen, wenn das Bild einer Grid-Spalte steht, die bei größeren Viewports nur ein Drittel des Platzes bekommen sollen. Ist die größtmögliche Source einmal geladen, wird diese für alle Ansichten verwendet, resp. die kleineren Sourcen werden nicht nachgeladen (gut so!).</p>

    <div class="grid grid--align-center">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <img data-sizes="auto" src="http://placehold.it/480x320/FF4600/000000?text=fallback" data-srcset="http://placehold.it/480x320/FF4600/000000?text=480x320+/+9.26 480w, http://placehold.it/650x433/8ED42B/000000?text=650x433+/+12.55 650w" alt="" class="lazyload" />
      </div>
    </div>


    <h1>Grid</h1>

    <div class="grid">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Second column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>
          <a class="test" href="#">
            <svg class="icon icon-twitter" role="img" title="Twitter">
              <use xlink:href="assets/img/icon-sprite.svg#icon-twitter" />
            </svg>
            Third column
          </a>
        </div>
      </div>
    </div>

    <h1>grid--text-right</h1>
    <div class="grid grid--text-right">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Second column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>
          <a class="test" href="#">
            <svg class="icon icon-twitter" role="img" title="Twitter">
              <use xlink:href="assets/img/icon-sprite.svg#icon-twitter" />
            </svg>
            Third column
          </a>
        </div>
      </div>
    </div>

    <h1>grid--text-center</h1>
    <div class="grid grid--text-center">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Second column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>

    <h1>grid--middle</h1>
    <div class="grid grid--middle">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>

    <h1>grid--bottom</h1>
    <div class="grid grid--bottom">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>

    <h1>grid__cell--center (.grid__cell)</h1>
    <div class="grid">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell grid__cell--center u-1/3-lap-and-up u-1/1-palm">
        <div>Second column - horizontally centered</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>

    <h1>grid__cell--text-center (.grid__cell)</h1>
    <div class="grid">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell grid__cell--text-center u-1/3-lap-and-up u-1/1-palm">
        <div style="min-height: 5em;">Text centered</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>

    <h1>grid__cell--text-right (.grid__cell)</h1>
    <div class="grid">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell grid__cell--text-right u-1/3-lap-and-up u-1/1-palm">
        <div>Text right align</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>


    <h1>grid--gutter</h1>
    <div class="grid grid--gutter-large">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>

    <h1>grid--gutter, nested grid</h1>
    <div class="grid grid--gutter-large">
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>First column</div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div class="grid">
          <div class="grid__cell u-1/2-lap-and-up u-1/1-palm">
            <div>First column</div>
          </div>
          <div class="grid__cell u-1/2-lap-and-up u-1/1-palm">
            <div style="min-height: 5em;">Second column</div>
          </div>
        </div>
      </div>
      <div class="grid__cell u-1/3-lap-and-up u-1/1-palm">
        <div>Third column</div>
      </div>
    </div>



    <h1>Flexgrid</h1>

    <div class="flexgrid">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>
          <a class="test" href="#">
            <svg class="icon icon-twitter" role="img" title="Twitter">
              <use xlink:href="assets/img/icon-sprite.svg#icon-twitter" />
            </svg>
            Third column
          </a>
        </div>
      </div>
    </div>

    <div class="flexgrid">
      <div class="flexgrid__cell">
        <div>Auto</div>
      </div>
      <div class="flexgrid__cell u-1/3">
        <div> 1/3</div>
      </div>
    </div>

    <div class="flexgrid">
      <div class="flexgrid__cell u-1/1 u-1/2-lap-and-up">
        <div> 1/1, 1/2 lap-and-up</div>
      </div>
      <div class="flexgrid__cell u-1/1 u-1/2-lap-and-up">
        <div> 1/1, 1/2 lap-and-up</div>
      </div>
    </div>

    <h1>flexgrid--gutter</h1>
    <div class="flexgrid flexgrid--gutter">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--gutter-tiny</h1>
    <div class="flexgrid flexgrid--gutter-tiny">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--gutter-small</h1>
    <div class="flexgrid flexgrid--gutter-small">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--gutter-large</h1>
    <div class="flexgrid flexgrid--gutter-large">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--gutter-huge</h1>
    <div class="flexgrid flexgrid--gutter-huge">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>





    <h1>flexgrid--top (default)</h1>
    <div class="flexgrid flexgrid--top">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--bottom</h1>
    <div class="flexgrid flexgrid--bottom">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--center</h1>
    <div class="flexgrid flexgrid--center">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--text-center</h1>
    <div class="flexgrid flexgrid--text-center">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>

    <h1>flexgrid--text-right</h1>
    <div class="flexgrid flexgrid--text-right">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div style="min-height: 5em;">Second column</div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>


    <h1>flexgrid cell modifiers (.flexgrid__cell)</h1>
    <div class="flexgrid">
      <div class="flexgrid__cell flexgrid__cell--center">
        <div>flexgrid__cell--center</div>
      </div>
      <div class="flexgrid__cell">
        <div style="min-height: 5em;">None (default: top)</div>
      </div>
      <div class="flexgrid__cell flexgrid__cell--bottom">
        <div>flexgrid__cell--bottom</div>
      </div>
      <div class="flexgrid__cell flexgrid__cell--top">
        <div>flexgrid__cell--top</div>
      </div>
      <div class="flexgrid__cell flexgrid__cell--text-center">
        <div>flexgrid__cell--text-center</div>
      </div>
      <div class="flexgrid__cell flexgrid__cell--text-right">
        <div>flexgrid__cell--text-right</div>
      </div>
    </div>



    <h1>Nested flexgrid</h1>
    <div class="flexgrid flexgrid--gutter">
      <div class="flexgrid__cell">
        <div>First column</div>
      </div>
      <div class="flexgrid__cell">
        <div class="flexgrid">
          <div class="flexgrid__cell">
            <div class="u-text-center">First column</div>
          </div>
          <div class="flexgrid__cell">
            <div>Second column</div>
          </div>
        </div>
      </div>
      <div class="flexgrid__cell">
        <div>Third column</div>
      </div>
    </div>




    <h1>Button</h1>

    <div class="grid">
      <div class="grid__cell u-1/1">
        <a href="#" class="button">.button</a>
      </div>
      <div class="grid__cell u-1/1">
        <a href="#" class="button button--tiny">.button--tiny</a>
      </div>
      <div class="grid__cell u-1/1">
        <a href="#" class="button button--small">.button--small</a>
      </div>
      <div class="grid__cell u-1/1">
        <a href="#" class="button button--large">.button--large</a>
      </div>
      <div class="grid__cell u-1/1">
        <a href="#" class="button button--huge">.button--huge</a>
      </div>
    </div>

    <div class="grid">
      <div class="grid__cell">
        <a href="#" class="button button--pill">.button--pill</a>
      </div>
    </div>

    <div class="grid">
      <div class="grid__cell">
        <a href="#" class="button button--large button--full">.button--full</a>
      </div>
    </div>

    <h1>Button Groups</h1>
    <div class="grid">
      <div class="grid__cell">
        <ul class="button-group button-group--horizontal button-group--collapse">
          <li class="button-group__item"><a href="#" class="button">Button</a></li>
          <li class="button-group__item"><a href="#" class="button">Button</a></li>
          <li class="button-group__item"><a href="#" class="button">Button</a></li>
        </ul>
      </div>
    </div>

    <div class="grid">
      <div class="grid__cell">
        <ul class="button-group button-group--collapse">
          <li class="button-group__item"><a href="#" class="button">Button</a></li>
          <li class="button-group__item"><a href="#" class="button">Button</a></li>
          <li class="button-group__item"><a href="#" class="button">Button</a></li>
        </ul>
      </div>
    </div>


    <h1>Table</h1>

    <div class="grid">
      <div class="grid__cell u-1/1">

          <!-- <table class="table table--border table--large" data-tablesaw-mode="stack"> -->

          <table class="table table--stripe table--border-row tablesaw tablesaw-stack" data-tablesaw-mode="stack">
            <thead>
              <tr>
                <th>Saison</th>
                <th>Zeiträume</th>
                <th>Preise</th>
              </tr>
            <tbody>
              <tr>
                <td>Hauptsaison (Saison A)</td>
                <td>01.01.-07.01. (Neujahr), 30.03.-12.04. (Ostern), 01.05. - 31.10. (Sommer) und 23.12.-31.12. (Weihnachten/Silvester)</td>
                <td>€ 2,80 pro Person und Tag</td>
              </tr>
              <tr>
                <td>Nebensaison (Saison B)</td>
                <td>08.01.-29.03., 13.04.-30.04. und 01.11.-22.12.</td>
                <td>€ 1,80 pro Person und Tag</td>
              </tr>
              <tr>
                <td>Nebensaison (Saison B)</td>
                <td>08.01.-29.03., 13.04.-30.04. und 01.11.-22.12.</td>
                <td>€ 1,80 pro Person und Tag</td>
              </tr>
              <tr>
                <td>Nebensaison (Saison B)</td>
                <td>08.01.-29.03., 13.04.-30.04. und 01.11.-22.12.</td>
                <td>€ 1,80 pro Person und Tag</td>
              </tr>
            </tbody>
          </table>

      </div>
    </div>

    <h1>Owl Carousel</h1>
    <div class="owl-carousel">
      <div class="item"><h1>1</h1></div>
      <div class="item"><h1>2</h1></div>
      <div class="item"><h1>3</h1></div>
      <div class="item"><h1>4</h1></div>
      <div class="item"><h1>5</h1></div>
      <div class="item"><h1>6</h1></div>
      <div class="item"><h1>7</h1></div>
      <div class="item"><h1>8</h1></div>
      <div class="item"><h1>9</h1></div>
      <div class="item"><h1>10</h1></div>
      <div class="item"><h1>11</h1></div>
      <div class="item"><h1>12</h1></div>
      <div class="item"><h1>13</h1></div>
      <div class="item"><h1>14</h1></div>
      <div class="item"><h1>15</h1></div>
      <div class="item"><h1>16</h1></div>
      <div class="item"><h1>17</h1></div>
      <div class="item"><h1>18</h1></div>
      <div class="item"><h1>19</h1></div>
      <div class="item"><h1>20</h1></div>
    </div>

    <div class="owl-carousel-single">
      <div class="item"><img class="lazyload" data-src="http://placehold.it/480x320" src="http://placehold.it/100x100" alt="The Last of us"></div>
      <div class="item"><img class="lazyload" src="http://placehold.it/100x100" data-src="http://placehold.it/240x160" alt="GTA V"></div>
      <div class="item"><img class="lazyload" src="http://placehold.it/100x100" data-src="http://placehold.it/640x480" alt="Mirror Edge"></div>
    </div>

    <h1>Fluidbox</h1>
    <p><a href="http://placehold.it/768x1024/" rel="fluidbox"><img src="http://placehold.it/320x180/" alt=""></a></p>

    <p><a href="#totop" class="button">nach oben</a></p>

  </div> <!-- /.page -->

  <script src="//code.jquery.com/jquery-2.1.4.min.js"></script>
  <script>window.jQuery || document.write('<script src="assets/libs/vendor/jquery.min.js"><\/script>');</script>
  <script src="assets/libs/vendor/plugins.min.js"></script>
  <script src="assets/libs/base.min.js"></script>

</body>
</html>

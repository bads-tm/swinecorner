<template>
<title>Fan sites - S.W.I.N.E. Mods and more</title>

    <div class="main">
            <h2>Játékosok oldalai vagy egyéb oldalak/Players page or other page:</h2>

            <ul class="links-list" v-for="item in jsonData" :key="item.title">
            <li>
              <a :href="item.link" target="_blank">{{ item.title }}</a>
              <span v-if="item.archivedLink"> (Archived: <a class="archived" :href="item.archivedLink" target="_blank">Archived Link</a>)</span>
            </li>
                <ul v-if="item.links">
                <li v-for="linkItem in item.links" :key="linkItem.title">
                    <a :href="linkItem.link" target="_blank">{{ linkItem.title }}</a>
                    <span v-if="linkItem.archivedLink"> (Archived: <a class="archived" :href="linkItem.archivedLink" target="_blank">Archived Link</a>)</span>
                </li>
                </ul>
          </ul>

    </div>
    
    <rightdefault/>
        
      </template>
      
      <script>
      export default {
        data() {
          return {
            jsonData: [
            {
    "title": "Stormregion",
    "link": "https://web.archive.org/web/20020206043227/http://www.stormregion.com:80/fooldali_index_hun.html"
  },
  {
    "title": "Digi",
    "link": "http://digi.atw.hu"
  },
  {
    "title": "Hede",
    "link": "http://hede.spaceweb.hu/php-files/news.php"
  },
  {
    "title": "BlackLeopard",
    "link": "http://feketeparduc.gportal.hu/"
  },
  {
    "title": "Pirateclub (archivált oldal/archived page 2012.08.08)",
    "link": "http://web.archive.org/web/20120808215721/http://pirateclub.clanbazis.com/news.php"
  },
  {
    "title": "Bads.tm",
    "link": "http://bads-tm.github.io/swine"
  },
  {
    "title": "swine-klub2001",
    "link": "http://swine-klub2001.ucoz.hu/"
  },
  {
    "title": "Sg fórumok/Sg forums:",
    "links": [
      {
        "title": "swinecentrum",
        "link": "http://web.archive.org/web/20160824115350/http://sgforum.hu/forum.php3?azonosito=swinecentrum"
      },
      {
        "title": "Hsf",
        "link": "http://sgforum.hu/forum.php3?azonosito=swinehsfforum",
        "archivedLink": "http://web.archive.org/web/20160824132817/http://sgforum.hu/forum.php3?azonosito=swinehsfforum"
      },
      {
        "title": "Swinegamer",
        "link": "http://web.archive.org/web/20160825183111/http://sgforum.hu/forum.php3?azonosito=swinegamer"
      },
      {
        "title": "FP(régi)",
        "link": "http://web.archive.org/web/20160828155247/http://sgforum.hu/forum.php3?azonosito=petko"
      },
      {
        "title": "Vip (Megszűnt/Ceased)",
        "link": "http://sgforum.hu/forum.php3?azonosito=vipswine"
      },
      {
        "title": "FP (Megszűnt/Ceased)",
        "link": "http://sgforum.hu/forum.php3?azonosito=firepower"
      },
      {
        "title": "Hsf (Megszűnt/Ceased)",
        "link": "http://sgforum.hu/forum.php3?azonosito=swinehsf"
      },
      {
        "title": "Fejlesztöi (Megszűnt/Ceased)",
        "link": "http://sgforum.hu/forum.php3?azonosito=Swinelife"
      }
    ]
  },
  {
    "title": "Clans:",
    "links": [
      {
        "title": "History + Klán oldalak linkjei/Clan page links on swine klub",
        "link": "http://swine-klub2001.ucoz.hu/index/klanok_clans/0-137"
      },
      {
        "title": "More clan and other player sites on digi",
        "link": "http://digi.atw.hu/link.php?lang=en"
      }
      
    ]
  }
]
          };
        }
      };
      </script>
      
      <style scoped>
.links-list,
.sub-links-list {
  list-style: none;
  padding-left: 0;
}

.links-list a,
.sub-links-list a {
  color: white;
  font-size: 20px;
}

.links-list .archived a {
    font-size: 5px;
}

.sub-links-list {
  margin-left: 20px;
}
</style>

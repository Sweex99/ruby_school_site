$ ->
  $('.blk').on  'ajax:success', (e, data, status, xhr) ->
    URL = ($ e.target).attr "href"
    idd = ($ e.target).attr 'id'
    console.log("Привет")

    url_delete_admin = "/admin_panels/delete_admin/"
    url_add_admin = "/admin_panels/add_admin/"

    if (URL == "/admin_panels/delete_admin/#{idd}")
      $("##{idd}").text("Зробити адміном")
      $("##{idd}").attr("href", url_add_admin + idd)
    if (URL == "/admin_panels/add_admin/#{idd}")
      $("##{idd}").text("Забрати права")
      $("##{idd}").attr("href", url_delete_admin + idd)



jQuery ->
  $('#user_speciality_id').parent().hide()
  specialities = $('#user_speciality_id').html()
  console.log(specialities);
  $('#user_area_id').change ->
    area = $('#user_area_id :selected').text()
    escaped_area = area.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    console.log(escaped_area)
    options = $(specialities).filter("optgroup[label='#{escaped_area}']").html()
    if options
      $('#user_speciality_id').html(options)
      $('#user_speciality_id').parent().show()
    else
      $('#user_speciality_id').empty()
      $('#user_speciality_id').parent().hide()


// jQuery(function() {
//   var specialities;
//   $('#user_speciality_id').parent().hide();
//   specialities = $('#user_speciality_id').html();
//   console.log(specialities);
//   return $('#user_area_id').change(function() {
//     var area, escaped_area, options;
//     area = $('#user_area_id :selected').text();
//     escaped_area = area.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
//     options = $(specialities).filter("optgroup[label=" + escaped_area + "]").html();
//     console.log(options);
//     if (options) {
//       $('#user_speciality_id').html(options);
//       return $('#user_speciality_id').parent().show();
//     } else {
//       $('#user_speciality_id').empty();
//       return $('#user_speciality_id').parent().hide();
//     }
//   });
// });
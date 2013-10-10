$ ->
  $('body').append(JST['junk/index'])

  $('#template-picker').change ->
    picker = $('#template-picker')
    container = $('#template-container')

    container.empty()

    if (picker.val() == '') then return

    args = {first_name: 'Theeban', last_name: 'Soundararajan'}
    view = JST[picker.val()](args)
 
    container.append(view)

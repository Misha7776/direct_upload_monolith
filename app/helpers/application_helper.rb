# frozen_string_literal: true

module ApplicationHelper
  def dropzone_controller_div(&block)
    data = {
      controller: 'dropzone',
      'dropzone-max-file-size' => '8',
      'dropzone-max-files' => '10',
      'dropzone-accepted-files' => 'image/jpeg,image/jpg,image/png,image/gif,application/pdf',
      'dropzone-dict-file-too-big' => 'File is too big. Max size is {{maxFilesize}} MB',
      'dropzone-dict-invalid-file-type' => 'Incorrect file format. Only .jpg, .png or .gif images are allowed'
    }

    content_tag :div, class: 'dropzone dropzone -default dz-clickable', data: data, &block
  end
end

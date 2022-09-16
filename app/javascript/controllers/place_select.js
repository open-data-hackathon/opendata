$(function() {
  //HTMLが読み込まれた時の処理
  let districtVal = $('#event_district').val();
  //一度目に検索した内容がセレクトボックスに残っている時用のif文
  if (districtVal !== "") {
   let selectedTemplate = $(`#place-of-district${districtVal}`);
   $('#event_place').remove();
   $('#br').after(selectedTemplate.html());
  };
 
  //先ほどビューファイルに追加したもともとある子要素用のセレクトボックスのHTML
  let defaultPlaceSelect = `<select class="default-place-select bg-gray-50 text-gray-800 border focus:ring 
                              ring-indigo-300 rounded outline-none transition duration-100 px-3 py-2 mt-2" 
                              name="event[place]" id="event_place">
 <option value>開催場所を選択してください</option>
 </select>`;
 
  $(document).on('change', '#event_district', function() {
   let districtVal = $('#event_district').val();
   //親要素のセレクトボックスが変更されてvalueに値が入った場合の処理
   if (districtVal !== "") {
    let selectedTemplate = $(`#place-of-district${districtVal}`);
    //デフォルトで入っていた子要素のセレクトボックスを削除
    $('#event_place').remove();
    $('#br').after(selectedTemplate.html());
   }else {
    //親要素のセレクトボックスが変更されてvalueに値が入っていない場合（include_blankの部分を選択している場合）
    $('#event_place').remove();
    $('#br').after(defaultPlaceSelect);
   };
  });
 });
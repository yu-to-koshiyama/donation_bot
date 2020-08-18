// // console.log("テスト");
// window.addEventListener("load", function () {
//   let btn = document.getElementById("form-address");
//   let attr = Number(document.getElementById("form-address").value);

//   btn.addEventListener("submit", function (e) {
//     e.preventDefault();
//     console.log(attr);
//   });
// });

// function codeAddress2() {
//   let index = Number(document.getElementById("form-address").value);
//   address = point_array[index].address;

//   geocoder.geocode(address, function (results, status) {
//     if (status == "OK") {
//       map.setCenter(results[0].geometry.location);
//       var marker = new google.maps.Marker({
//         map: map,
//         animation: google.maps.Animation.DROP,
//         label: labels[labelIndex++ % labels.length],
//         title: inputAddress,
//         position: results[0].geometry.location,
//       });
//       markers.push(marker);
//       display.textContent = "検索結果：" + results[0].geometry.location;
//     } else {
//       alert("該当する結果がありませんでした：" + status);
//     }
//   });
// }

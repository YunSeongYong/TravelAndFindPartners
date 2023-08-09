window.initMap = function () {
  const map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: 37.5400456, lng: 126.9921017 },
    zoom: 10
  });

  const malls = [
    { label: "C", name: "코엑스몰", lat: 37.5115557, lng: 127.0595261 },
    { label: "G", name: "고투몰", lat: 37.5062379, lng: 127.0050378 },
    { label: "D", name: "동대문시장", lat: 37.566596, lng: 127.007702 },
    { label: "I", name: "IFC몰", lat: 37.5251644, lng: 126.9255491 },
    { label: "L", name: "롯데월드타워몰", lat: 37.5125585, lng: 127.1025353 },
    { label: "M", name: "명동지하상가", lat: 37.563692, lng: 126.9822107 },
    { label: "T", name: "타임스퀘어", lat: 37.5173108, lng: 126.9033793 }
  ];

  const bounds = new google.maps.LatLngBounds();
  const infoWindow = new google.maps.InfoWindow();

  malls.forEach(({ label, name, lat, lng }) => {
    const marker = new google.maps.Marker({
      position: { lat, lng },
      label,
      map
    });
    bounds.extend(marker.position);

    marker.addListener("click", () => {
      map.panTo(marker.position);
      infoWindow.setContent(name);
      infoWindow.open({
        anchor: marker,
        map
      });
    });
  });

  map.fitBounds(bounds);
};


window.onload = function() {
	
  document.querySelectorAll(".dayItem").forEach(function(item){
	    // 세션 스토리지에서 선택한 결과를 가져옵니다.
		  const selectedResults = sessionStorage.getItem(item.id);
		
		  // 선택한 결과가 있으면 해당 요소에 설정합니다.
		  if (selectedResults) {
		    document.querySelector("#" +item.id + " div div #memoContent p").textContent = selectedResults;
		  }
	})
	

}



window.addEventListener('DOMContentLoaded', (event) => {
  // "장소와 일정 추가" 부분에 저장된 주소를 표시합니다.
  var memoContent = document.getElementById('memoContent');
  var selectedAddress = sessionStorage.getItem('selectedAddress');

  // 저장된 주소가 있으면 표시합니다.
  if (selectedAddress) {
    var paragraph = document.createElement('p');
    paragraph.innerText = selectedAddress;
    memoContent.appendChild(paragraph);
  }
});

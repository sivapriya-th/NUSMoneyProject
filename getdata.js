function getCustDataFromServer()
{
    console.log("Get Cust Data From Server");
    var requestOptions = {
      method: "GET",
    };

    fetch("http://localhost:3000/customer/all", requestOptions)
    .then((response) => response.json())
    .then((data) => {
      console.log("In fetch method");

      var text = "<ul>";
      
      data.forEach(function (item) {
        text += `<li>
        cust_id: ${item.cust_id} <br>
        first_name: ${item.first_name} <br>
        last_name: ${item.last_name} <br>
        email: ${item.email} <br>
        contact_number: ${item.contact_number}
        </li>`;
      });
      
      text += "</ul>";
      $(".mypanel").html(text);

    })
    .catch((error)=> console.log("UI rendering Error:"+error));
}
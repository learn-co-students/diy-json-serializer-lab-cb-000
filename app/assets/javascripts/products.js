$(function () {
  $(".js-next").on("click", function(e) {
    e.preventDefault();
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/products/" + nextId + "/data", function(data) {
      $(".name").text(data["name"]);
      $(".description").text("Description: " + data["description"]);
      $(".price").text("Price: " + data["price"]);
      $(".inventory").text("Inventory: " + data["inventory"]);
    });
  });
})

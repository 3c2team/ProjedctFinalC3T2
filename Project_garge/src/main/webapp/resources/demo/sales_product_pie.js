// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");
//$.ajax({
//		type: "POST",
//		url: "",
//		async: false,
//		data: {
//		},
//		success: function(adminSelectProductSales) {
//			product_category = adminSelectProductSales.map(row => row.category);
//			sales = adminSelectProductSales.map(row => row.sales);
			
//		},
//		error:function(){
//			alert("들고오기 실패");
//		}
//	});
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: [1,2,3,4],
    datasets: [{
      data: [10,20,30,40],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745','#000'],
    }],
  },
});

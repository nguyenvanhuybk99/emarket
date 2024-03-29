
<div class="container-fluid">
	<div class="row">
		<div class="SideBar col-lg-2 col-md-2 col-sm-3 col-xs-12">
			<div class="SideBarItem">
				<h4 class="headline">Main Categories</h4>
				<div style="margin-left: -40px;">
					<nav>
						<ul class="sidebar-list">
							<li><a href="category?1">Mac</a></li>
							<li><a href="category?3">iPhone</a></li>
							<li><a href="category?2">iPad</a></li>
							<li><a href="category?4">Accessories</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="SideBarItem">
				<h4>Free Shipping</h4>
				<p>We offer you a Free Shipping, if your order value is over 1000.000 VND. For more information please check:</p>
				<p><a href="#">Free Shipping Information and Conditions</a></p>
			</div>
			<div class="SideBarItem">
				<h4>Pickup</h4>
				<p>You can pickup your goods, after you placed an order and and received a ready-for-pickup notification.</p>
			</div>
		</div>
	
		<!-- Content -->
	
		<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
			<h4 class="headline">Billing address</h4>
			<b>Your order has been successful processed and will be delivery within 24 hours</b>
			<br>
			<br>
			<span>Please keep note of your confirmation number: </span>
			<strong>${orderRecord.confirmationNumber}</strong>
			<br>
			<p>If you have any query concerning your order, fell free to <a href="#">contact us</a>. </p>		
			<p>Thank you for shopping at the LoL.team Store!See you soon!</p>			
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<h4 class="headline">Order Summary</h4>
					<hr>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>PRODUCT</th>
								<th>QUANTITY</th>
								<th>PRICE</th>								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="orderedProduct" items="${orderedProducts}" varStatus="iter">
								<tr>
								    <td>${products[iter.index].name}</td>
								    <td>${orderedProduct.quantity}</td>							    
								    <td><fmt:formatNumber type="currency" currencySymbol="&dollar; " value="${products[iter.index].price * orderedProduct.quantity}" /></td>
										
								</tr>
					        </c:forEach>
							<tr>
								<td>Delivery Surcharge</td>
								<td></td>
								<td><fmt:formatNumber type="currency" currencySymbol="&dollar; " value="5" /></td>
							</tr>
							<tr>
								<td>Promo code</td>
								<td></td>
								<td><fmt:formatNumber type="currency" currencySymbol="&dollar; " value="0" /></td>
							</tr>
							<tr>
								<td>Credit Total</td>
								<td></td>								
								<td><fmt:formatNumber type="currency" currencySymbol="&dollar; " value="${total + 5 }" /></td>
							</tr>
							<tr>
								<td>Date create: ${orderRecord.dateCreated}</td>
							
							</tr>
							<tr>
								<td>Status: Awaiting delivery</td>
								
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<h4 class="headline">Information of customer:</h4>
					<hr>
					<table>
						<tr>
						
							<td colspan="3">
								<strong>Name :</strong>
								${customer.getName()}
								<br>
								<strong>Username :</strong>
								${customer.getUsername()}
								<br>
								<strong>Mail :</strong>
								${customer.getEmail()}
							</td>
						</tr>
		        	</table>
		        	<h4 class="headline">Delivery Address</h4>
		        	<hr>
					<table>
						<tr>
							<td colspan="3">
								<strong>Receiver :</strong>
								${orderRecord.getReceiver()}
								<br>
								<strong>Address :</strong>
								${orderRecord.getAddress()}
								<br>
								<strong>Phone :</strong>
								${orderRecord.getPhone()}
							</td>
						</tr>
		        	</table>
		        	
				</div>
			</div>
		</div>		
	</div>
</div>
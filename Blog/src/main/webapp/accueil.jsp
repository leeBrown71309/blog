<%@page 
import="models.UserModel,
java.util.Vector"
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />

  <script src="https://cdn.tailwindcss.com"></script>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/index.min.css" />
  <link rel="stylesheet" href="css/style.css">
  
<title>Accueil</title>
</head>
<body>
	<section><%@include file="menu.jsp" %></section>
	
	
	<section class="pt-10"> 
		<div class="container mx-auto rounded-lg mb-2 bg-indigo-500 p-5">
			<p class="text-4xl  text-center text-white pb-2 border-b-4 border-ingigo-500">Les tutos de Lee</p>
		</div>
		
		<div class="rounded rounded-lg">
		 	<img class="w-full px-4 rounded-lg"  src="images/banner.jpg" alt="River">
		</div>
	  <div>
	  <p class="text-2xl font-semibold text-indigo-500 text-center  pt-5">Liste des postes récents</p>
	  	<div class="p-10 grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3 gap-5">
		    <!--Card 1-->
		    <div class="rounded overflow-hidden shadow-lg transition ease-in-out delay-150 hover:-translate-y-1 hover:test-white hover:scale-105 hover:bg-indigo-500 duration-300">
		      <img class="w-full" src="images/cover_1.jpg" alt="Mountain">
		      <div class="px-6 py-4">
		        <div class="font-bold text-xl mb-2">Mountain</div>
		        <p class="text-gray-700 text-base">
		          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quia, Nonea! Maiores et perferendis eaque, exercitationem praesentium nihil.
		        </p>
		      </div>
		      <div class="px-6 pt-4 pb-2">
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#photography</span>
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#travel</span>
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#winter</span>
		      </div>
		    </div>
		    <!--Card 2-->
		    <div class="rounded overflow-hidden shadow-lg">
		      <img class="w-full"  src="images/cover_2.jpg" alt="River">
		      <div class="px-6 py-4">
		        <div class="font-bold text-xl mb-2">River</div>
		        <p class="text-gray-700 text-base">
		          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quia, Nonea! Maiores et perferendis eaque, exercitationem praesentium nihil.
		        </p>
		      </div>
		      <div class="px-6 pt-4 pb-2">
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#photography</span>
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#travel</span>
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#summer</span>
		      </div>
		    </div>
		
		    <!--Card 3-->
		    <div class="rounded overflow-hidden shadow-lg">
		      <img class="w-full" src="images/cover_3.jpg" alt="Forest">
		      <div class="px-6 py-4">
		        <div class="font-bold text-xl mb-2">Forest</div>
		        <p class="text-gray-700 text-base">
		          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quia, Nonea! Maiores et perferendis eaque, exercitationem praesentium nihil.
		        </p>
		      </div>
		      <div class="px-6 pt-4 pb-2">
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#photography</span>
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#travel</span>
		        <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">#fall</span>
		      </div>
		    </div>
		    
		  </div>
	  </div>
	  

		
		 
	</section>
		
	
		
	
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/index.min.js"></script>
</body>
</html>


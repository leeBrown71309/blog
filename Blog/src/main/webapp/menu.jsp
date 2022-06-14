
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />

  <script src="https://cdn.tailwindcss.com"></script>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/index.min.css" />
  <link rel="stylesheet" href="css/menu.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
     
<title></title>
</head>
<body>
		<!-- Navbar goes here -->
		<nav class="bg-white shadow-lg">
			<div class="max-w-6xl mx-auto px-4">
				<div class="flex justify-between">
					<div class="flex space-x-7">
						 <div class="pl-4 py-3 flex items-center mr-3">
					          <a
					            class="text-indigo-500 no-underline hover:no-underline font-bold text-2xl lg:text-4xl"
					            href="#"
					          >
					            <svg
					              class="h-6 w-6 inline-block fill-current text-yellow-500"
					              xmlns="http://www.w3.org/2000/svg"
					              viewBox="0 0 20 20"
					            >
					              <path d="M13 8V0L8.11 5.87 3 12h4v8L17 8h-4z" />
					            </svg>
					            Drawn Bolt
					          </a>
					          
					       </div>
						<!-- Primary Navbar items -->
						<div class=" hidden md:flex items-center space-x-1">
							<a href="accueil.jsp" class="active active-menu py-4 px-2 text-gray-500 font-semibold ">Accueil</a>
							<a href="#" class="active-menu py-4 px-2 text-gray-500 font-semibold hover:text-indigo-500 transition duration-300">Cours</a>
							<a href="#" class="active-menu py-4 px-2 text-gray-500 font-semibold hover:text-indigo-500 transition duration-300">Materiels</a>
							<a href="#" class="active-menu py-4 px-2 text-gray-500 font-semibold hover:text-indigo-500 transition duration-300">Astuces</a>
							<a href="#" class="active-menu py-4 px-2 text-gray-500 font-semibold hover:text-indigo-500 transition duration-300">Ressources</a>
							<a href="#" class="active-menu py-4 px-2 text-gray-500 font-semibold hover:text-indigo-500 transition duration-300">A propos</a>
						</div>
					</div>
					 <!-- Right elements -->
				  <div class="flex items-center relative">
				  <!-- Icon -->
				  <div class="flex justify-center">
 
					<p class="text-gray-500 px-2"> user role </p>
				  <div class=" relative">
				    <a class=" flex items-center hidden-arrow" href="profil.jsp" id="" role="button"
				     >
				      <img src="https://mdbootstrap.com/img/new/avatars/2.jpg" class="rounded-full"
				        style="height: 25px; width: 25px" alt="" loading="lazy" />
				    </a>
				    
				  </div>
				  </div>
				  <!-- Right elements -->
					<div class="md:hidden flex items-center">
						<button class="outline-none mobile-menu-button">
						<svg class=" w-6 h-6 text-gray-500 hover:text-indigo-500 "
							x-show="!showMenu"
							fill="none"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							viewBox="0 0 24 24"
							stroke="currentColor"
						>
							<path d="M4 6h16M4 12h16M4 18h16"></path>
						</svg>
					</button>
					</div>
				</div>
			</div>
			<!-- mobile menu -->
			<div class="hidden mobile-menu">
				<div>
				  <ul>
				    
				    <li class="active one py-4 px-2 text-gray-500 hover:bg-indigo-500 hover:text-white font-semibold "><a>Accueil</a></li>
				   <li class="one py-4 px-2 text-gray-500 hover:bg-indigo-500 hover:text-white font-semibold "><a>Cours</a></li>
				   <li class="one py-4 px-2 text-gray-500 hover:bg-indigo-500 hover:text-white font-semibold "><a>Astuces</a></li>
				   <li class="one py-4 px-2 text-gray-500 hover:bg-indigo-500 hover:text-white font-semibold "><a>Ressources</a></li>
				   <li class="one py-4 px-2 text-gray-500 hover:bg-indigo-500 hover:text-white font-semibold "><a>A propos</a></li>
				  </ul>
				</div>
			</div>
				
			
		
			
		
			<script>
			$(document).ready(function () {
				  
				  $(".one").click(function (){
				    $(this).addClass("active").siblings().removeClass("active");
				  });
				});

			
			$(document).ready(function () {
				  
				  $(".active-menu").click(function (){
				    $(this).addClass("active").siblings().removeClass("active");
				  });
				});
			
			
				const btn = document.querySelector("button.mobile-menu-button");
				const menu = document.querySelector(".mobile-menu");

				btn.addEventListener("click", () => {
					menu.classList.toggle("hidden");
				});
			</script>
			 <script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/index.min.js"></script>
	</body>
</html>
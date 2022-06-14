<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" href="css/.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    
  
<link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">


<title>Profil Page</title>
</head>
<body>
	<%@include file="menu.jsp" %>
	
	<c:if test="${ !empty sessionScope.login && 
             	 !empty sessionScope.prenom && 
             	 !empty sessionScope.nom && 
             	 !empty sessionScope.role}">
        			
    			</c:if>
	
	
	
<main class="profile-page pt-3">
  <section class="relative block h-500-px">
    <div class="absolute top-0 w-full h-full bg-center bg-cover" style="
            background-image: url('images/profil_fond.png');
          ">
      <span id="blackOverlay" class="w-full h-full absolute opacity-50 bg-black"></span>
    </div>
    <div class="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden h-70-px" style="transform: translateZ(0px)">
      <svg class="absolute bottom-0 overflow-hidden" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none" version="1.1" viewBox="0 0 2560 100" x="0" y="0">
        <polygon class="text-blueGray-200 fill-current" points="2560 0 2560 100 0 100"></polygon>
      </svg>
    </div>
  </section>
  <section class="relative py-16 bg-blueGray-200">
    <div class="container mx-auto px-4">
      <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
        <div class="px-6">
          <div class="flex flex-wrap justify-center">
            <div class="w-full lg:w-3/12 px-4 lg:order-2 flex justify-center">
              <div class="relative pt-20">
                <img alt="..." src="https://demos.creative-tim.com/notus-js/assets/img/team-2-800x800.jpg" class="shadow-xl rounded-full h-auto align-middle border-none absolute -m-16 -ml-20 lg:-ml-16 max-w-150-px">
              </div>
            </div>
            <div class="w-full lg:w-4/12 px-4 lg:order-3 lg:text-right lg:self-center">
             
            </div>
            <div class="w-full lg:w-4/12 px-4 lg:order-1">
              <div class="flex justify-center py-4 lg:pt-4 pt-8">
                <div class="mr-4 p-3 text-center">
                  <span class="text-xl font-bold block uppercase tracking-wide text-blueGray-600">22</span><span class="text-sm text-blueGray-400">Abonnées</span>
                </div>
                <div class="mr-4 p-3 text-center">
                  <span class="text-xl font-bold block uppercase tracking-wide text-blueGray-600">10</span><span class="text-sm text-blueGray-400">Post</span>
                </div>
                <div class="lg:mr-4 p-3 text-center">
                  <span class="text-xl font-bold block uppercase tracking-wide text-blueGray-600">89</span><span class="text-sm text-blueGray-400">Cours</span>
                </div>
              </div>
            </div>
          </div>
          <div class="text-center pt-20 mt-12">
           <div class="py-6 px-3 mt-32 sm:mt-0">
                
                <div class="flex items-center justify-center">
				  <div class="inline-flex shadow-md hover:shadow-lg focus:shadow-lg" role="group">
				  	
				      <button class="text-white bg-red-600 uppercase text-white font-bold hover:shadow-md shadow text-xs px-4 py-2 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all duration-150" 
				      type="submit">
		                  Deconnexion
		                </button>
		            
				      <button class="text-white bg-blue-400 uppercase text-white font-bold hover:shadow-md shadow 
				      text-xs px-4 py-2 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all
				       duration-150" data-bs-toggle="modal" data-bs-target="#editInfos" type="button">
	                  Modifier vos informations
	                </button>
	                <a href="posts.jsp">
	                 <button class="text-white bg-blue-400 uppercase text-white font-bold hover:shadow-md shadow
	                  text-xs px-4 py-2 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all
	                   duration-150"  type="button">
	                  Mes postes
	                </button>
	                </a>
				    
				  </div>
				</div>
              </div>
            <div class="text-4xl font-semibold leading-normal mb-2 text-blueGray-700 mb-2">
            
             	<p>Prénom : ${ sessionScope.prenom }</p>
    			
            </div>
            
            <div class="text-4xl leading-normal mt-0 mb-2 text-blueGray-700 font-semibold">
             
              <p>Nom : ${ sessionScope.nom }</p>
            </div>
            <div class="mb-2 text-4xl text-blueGray-700 font-semibold">
             
              <p>Login : ${ sessionScope.login }</p>
            </div>
            <div class="mb-2 text-4xl text-blueGray-700 font-semibold">
              
              <p>Role : ${ sessionScope.role }</p>
            </div>
          </div>
          <div class="mt-10 py-10 border-t border-blueGray-200 text-center">
            <div class="flex flex-wrap justify-center">
              <div class="w-full lg:w-9/12 px-4">
                <p class="mb-4 text-lg leading-relaxed text-blueGray-700">
                  An artist of considerable range, Jenna the name taken by
                  Melbourne-raised, Brooklyn-based Nick Murphy writes,
                  performs and records all of his own music, giving it a
                  warm, intimate feel with a solid groove structure. An
                  artist of considerable range.
                </p>
                
              </div>
             
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="relative bg-blueGray-200 pt-8 pb-6 mt-8">
  <div class="container mx-auto px-4">
    <div class="flex flex-wrap items-center md:justify-between justify-center">
      <div class="w-full md:w-6/12 px-4 mx-auto text-center">
       
      </div>
    </div>
  </div>
  <!-- Modal -->
<div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto"
  id="editInfos" tabindex="-1" aria-labelledby="exampleModalScrollableLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable relative w-auto pointer-events-none">
    <div
      class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
      <div
        class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalScrollableLabel">
          Modification
        </h5>
        <button type="button"
          class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
          data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body relative p-4">
        <div class="block p-6 rounded-lg shadow-lg bg-white max-w-md">
		  <form method="post" action="UpdateUser">
		    <div class="grid grid-cols-2 gap-4">

		      <div class="form-group mb-6">
		        <input type="text" class="form-control
		          block
		          w-full
		          px-3
		          py-1.5
		          text-base
		          font-normal
		          text-gray-700
		          bg-white bg-clip-padding
		          border border-solid border-gray-300
		          rounded
		          transition
		          ease-in-out
		          m-0
		          focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInput123"
		          aria-describedby="emailHelp123" placeholder="Prénom" name="prenom">
		      </div>
		      <div class="form-group mb-6">
		        <input type="text" class="form-control
		          block
		          w-full
		          px-3
		          py-1.5
		          text-base
		          font-normal
		          text-gray-700
		          bg-white bg-clip-padding
		          border border-solid border-gray-300
		          rounded
		          transition
		          ease-in-out
		          m-0
		          focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInput124"
		          aria-describedby="emailHelp124" placeholder="Nom" name="nom">
		      </div>
		    </div>
		    <div class="form-group mb-6">
		      <input type="text" class="form-control block
		        w-full
		        px-3
		        py-1.5
		        text-base
		        font-normal
		        text-gray-700
		        bg-white bg-clip-padding
		        border border-solid border-gray-300
		        rounded
		        transition
		        ease-in-out
		        m-0
		        focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInput125"
		        placeholder="Login" name="login">
		    </div>
		    <div class="form-group mb-6">
		      <input type="password" class="form-control block
		        w-full
		        px-3
		        py-1.5
		        text-base
		        font-normal
		        text-gray-700
		        bg-white bg-clip-padding
		        border border-solid border-gray-300
		        rounded
		        transition
		        ease-in-out
		        m-0
		        focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" id="exampleInput126"
		        placeholder="Mot de passe" name="password">
		    </div>
		    
      
      <div
        class="modal-footer flex flex-shrink-0 flex-wrap items-center justify-end p-4 border-t border-gray-200 rounded-b-md">
        <button type="button"
          class="inline-block px-6 py-2.5 bg-purple-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-purple-700 hover:shadow-lg focus:bg-purple-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-purple-800 active:shadow-lg transition duration-150 ease-in-out"
          data-bs-dismiss="modal">
          fermer
        </button>
        <button type="submit"
          class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out ml-1">
          Modifier
        </button>
      </div>
      </form>
</div>
    </div>
  </div>
</div>
</footer>
  </section>
</main>

 <script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/index.min.js"></script>
</body>
</html>
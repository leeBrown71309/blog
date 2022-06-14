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
<section>
	<%@include file="menu.jsp" %>
</section>

	<section>
		<p class="text-3xl pt-4 text-center font-bold text-indigo-500">Liste des postes</p>
		
		
	        <button class="px-3 text-white bg-indigo-400 uppercase text-white font-bold hover:shadow-md shadow
	              text-xs mx-5 py-2 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all
	              duration-150" data-bs-toggle="modal" data-bs-target="#addpost"  type="button">
	              Ajouter un poste
	         </button>
	     
	     
	       <!-- Modal -->
<div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-x-hidden overflow-y-auto"
  id="addpost" tabindex="-1" aria-labelledby="exampleModalScrollableLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable relative w-auto pointer-events-none">
    <div
      class="modal-content border-none shadow-lg relative flex flex-col w-full pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
      <div
        class="modal-header flex flex-shrink-0 items-center justify-between p-4 border-b border-gray-200 rounded-t-md">
        <h5 class="text-xl font-medium leading-normal text-gray-800" id="exampleModalScrollableLabel">
          Ajouter un poste
        </h5>
        <button type="button"
          class="btn-close box-content w-4 h-4 p-1 text-black border-none rounded-none opacity-50 focus:shadow-none focus:outline-none focus:opacity-100 hover:text-black hover:opacity-75 hover:no-underline"
          data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body relative p-4">
        <div class="block p-6 rounded-lg shadow-lg bg-white max-w-md">
		  <form method="post" action="AddPost">
		    <div class="grid grid-cols-2 gap-4">

		      <div class="form-group mb-6">
		        <input type="text" class="form-control
		          
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
		          aria-describedby="emailHelp123" placeholder="titre" name="title">
		      </div>
		      <div class="form-group mb-6">
		        <textarea type="text" class="form-control
		          
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
		          aria-describedby="emailHelp124" rows="3" placeholder="contenue" name="content"></textarea>
		      </div>
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
</div>
	</section>

</body>
</html>
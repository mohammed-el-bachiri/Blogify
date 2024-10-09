<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<layout:layout title="Article Detail">

	<div
		class="pt-8 pb-16 lg:pt-16 lg:pb-24 bg-white dark:bg-gray-900 antialiased">
		<div class="flex justify-between px-4 mx-auto max-w-screen-xl ">
			<article
				class="mx-auto w-full max-w-2xl format format-sm sm:format-base lg:format-lg format-blue dark:format-invert">
				<header class="mb-4 lg:mb-6 not-format">
					<address class="flex items-center mb-6 not-italic">
						<div
							class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white">
							<img class="mr-4 w-16 h-16 rounded-full"
								src="https://flowbite.com/docs/images/people/profile-picture-2.jpg"
								alt="Jese Leos">
							<div>
								<a href="#" rel="author"
									class="text-xl font-bold text-gray-900 dark:text-white">${ user.firstName }
								<p class="text-base text-gray-500 dark:text-gray-400"></p>
								<p class="text-base text-gray-500 dark:text-gray-400">
									<%-- <time pubdate datetime="${article.formattedCreationDate}"
										title="${article.formattedCreationDate}">${article.formattedCreationDate}</time>
									<time pubdate datetime="${article.formattedPublishedDate}"
										title="${article.formattedPublishedDate}">${article.formattedPublishedDate}</time>
 --%>

								</p>
							</div>
						</div>
					</address>
					<h1
						class="mb-4 text-3xl font-extrabold leading-tight text-gray-900 lg:mb-6 lg:text-4xl dark:text-white">${ article.title }</h1>
				</header>
				<p class="lead">${ article.content }</p>
				<figure>
					<img
						src="https://flowbite.s3.amazonaws.com/typography-plugin/typography-image-1.png"
						alt="">
					<figcaption>Digital art by Anonymous</figcaption>
				</figure>

				<section class="not-format">
					<div class="flex justify-between items-center mb-6">
						<h2
							class="text-lg lg:text-2xl font-bold text-gray-900 dark:text-white">Discussion
							(20)</h2>
					</div>
					<form class="mb-6" method="post"
						action="${ pageContext.request.contextPath}/comment/store">
						<input type="hidden" value="${ article.id }" name="article_id" />
						<div
							class="py-2 px-4 mb-4 bg-white rounded-lg rounded-t-lg border border-gray-200 dark:bg-gray-800 dark:border-gray-700">
							<label for="comment" class="sr-only">Your comment</label>
							<textarea id="comment" rows="6" name="comment_content"
								class="px-0 w-full text-sm text-gray-900 border-0 focus:ring-0 dark:text-white dark:placeholder-gray-400 dark:bg-gray-800"
								placeholder="Write a comment..." required></textarea>
						</div>
						<button type="submit"
							class="inline-flex items-center py-2.5 px-4 text-xs font-medium text-center text-white bg-primary-700 rounded-lg focus:ring-4 focus:ring-primary-200 dark:focus:ring-primary-900 hover:bg-primary-800">
							Post comment</button>
					</form>
					<article
						class="p-6 mb-6 text-base bg-white rounded-lg dark:bg-gray-900">
						<footer class="flex justify-between items-center mb-2">
							<div class="flex items-center">
								<p
									class="inline-flex items-center mr-3 font-semibold text-sm text-gray-900 dark:text-white">
									<img class="mr-2 w-6 h-6 rounded-full"
										src="https://flowbite.com/docs/images/people/profile-picture-2.jpg"
										alt="Michael Gough">Michael Gough
								</p>
								<p class="text-sm text-gray-600 dark:text-gray-400">
									<time pubdate datetime="2022-02-08" title="February 8th, 2022">Feb.
										8, 2022</time>
								</p>
							</div>
							<button id="dropdownComment1Button"
								data-dropdown-toggle="dropdownComment1"
								class="inline-flex items-center p-2 text-sm font-medium text-center text-gray-500 bg-white rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-50 dark:text-gray-400 dark:bg-gray-900 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
								type="button">
								<svg class="w-4 h-4" aria-hidden="true"
									xmlns="http://www.w3.org/2000/svg" fill="currentColor"
									viewBox="0 0 16 3">
								<path
										d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z" />
							</svg>
								<span class="sr-only">Comment settings</span>
							</button>
							<!-- Dropdown menu -->
							<div id="dropdownComment1"
								class="hidden z-10 w-36 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600">
								<ul class="py-1 text-sm text-gray-700 dark:text-gray-200"
									aria-labelledby="dropdownMenuIconHorizontalButton">
									<li>
										<!-- Modal toggle -->
										<button data-modal-target="authentication-modal"
											data-modal-toggle="authentication-modal" type="button"
											class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white w-full text-start">Edit
										</button>
									</li>
									<li><a href="#"
										class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Remove</a>
									</li>
									<li><a href="#"
										class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Report</a>
									</li>
								</ul>
							</div>
						</footer>
						<p>Very straight-to-point article. Really worth time reading.
							Thank you! But tools are just the instruments for the UX
							designers. The knowledge of the design tools are as important as
							the creation of the design strategy.</p>

						<!-- Main modal -->
						<div id="authentication-modal" tabindex="-1" aria-hidden="true"
							class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
							<div class="relative p-4 w-full max-w-md max-h-full">
								<!-- Modal content -->
								<div
									class="relative bg-white rounded-lg shadow dark:bg-gray-700">
									<!-- Modal header -->
									<div
										class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
										<h3
											class="text-xl font-semibold text-gray-900 dark:text-white">
											Edit Comment</h3>
										<button type="button"
											class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
											data-modal-hide="authentication-modal">
											<svg class="w-3 h-3" aria-hidden="true"
												xmlns="http://www.w3.org/2000/svg" fill="none"
												viewBox="0 0 14 14">
									                        <path stroke="currentColor"
													stroke-linecap="round" stroke-linejoin="round"
													stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
									                    </svg>
											<span class="sr-only">Close modal</span>
										</button>
									</div>
									<!-- Modal body -->
									<div class="p-4 md:p-5">
										<form class="space-y-4" action="#">
											<div>
												<label for="comment"
													class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your
													Comment</label>
												<textarea name="comment" id="comment"
													class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
													placeholder="Enter new Comment" required></textarea>
											</div>

											<button type="submit"
												class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
												Save</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</article>

				</section>
			</article>
		</div>
	</div>

	<aside aria-label="Related articles"
		class="py-8 lg:py-24 bg-gray-50 dark:bg-gray-800">
		<div class="px-4 mx-auto max-w-screen-xl">
			<h2 class="mb-8 text-2xl font-bold text-gray-900 dark:text-white">Related
				articles</h2>
			<div class="grid gap-12 sm:grid-cols-2 lg:grid-cols-4">
				<article class="max-w-xs">
					<a href="#"> <img
						src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/article/blog-1.png"
						class="mb-5 rounded-lg" alt="Image 1">
					</a>
					<h2
						class="mb-2 text-xl font-bold leading-tight text-gray-900 dark:text-white">
						<a href="#">Our first office</a>
					</h2>
					<p class="mb-4 text-gray-500 dark:text-gray-400">Over the past
						year, Volosoft has undergone many changes! After months of
						preparation.</p>
					<a href="#"
						class="inline-flex items-center font-medium underline underline-offset-4 text-primary-600 dark:text-primary-500 hover:no-underline">
						Read in 2 minutes </a>
				</article>
				<article class="max-w-xs">
					<a href="#"> <img
						src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/article/blog-2.png"
						class="mb-5 rounded-lg" alt="Image 2">
					</a>
					<h2
						class="mb-2 text-xl font-bold leading-tight text-gray-900 dark:text-white">
						<a href="#">Enterprise design tips</a>
					</h2>
					<p class="mb-4  text-gray-500 dark:text-gray-400">Over the past
						year, Volosoft has undergone many changes! After months of
						preparation.</p>
					<a href="#"
						class="inline-flex items-center font-medium underline underline-offset-4 text-primary-600 dark:text-primary-500 hover:no-underline">
						Read in 12 minutes </a>
				</article>
				<article class="max-w-xs">
					<a href="#"> <img
						src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/article/blog-3.png"
						class="mb-5 rounded-lg" alt="Image 3">
					</a>
					<h2
						class="mb-2 text-xl font-bold leading-tight text-gray-900 dark:text-white">
						<a href="#">We partnered with Google</a>
					</h2>
					<p class="mb-4  text-gray-500 dark:text-gray-400">Over the past
						year, Volosoft has undergone many changes! After months of
						preparation.</p>
					<a href="#"
						class="inline-flex items-center font-medium underline underline-offset-4 text-primary-600 dark:text-primary-500 hover:no-underline">
						Read in 8 minutes </a>
				</article>
				<article class="max-w-xs">
					<a href="#"> <img
						src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/article/blog-4.png"
						class="mb-5 rounded-lg" alt="Image 4">
					</a>
					<h2
						class="mb-2 text-xl font-bold leading-tight text-gray-900 dark:text-white">
						<a href="#">Our first project with React</a>
					</h2>
					<p class="mb-4  text-gray-500 dark:text-gray-400">Over the past
						year, Volosoft has undergone many changes! After months of
						preparation.</p>
					<a href="#"
						class="inline-flex items-center font-medium underline underline-offset-4 text-primary-600 dark:text-primary-500 hover:no-underline">
						Read in 4 minutes </a>
				</article>
			</div>
		</div>
	</aside>

	<section class="bg-white dark:bg-gray-900">
		<div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
			<div class="mx-auto max-w-screen-md sm:text-center">
				<h2
					class="mb-4 text-3xl font-extrabold tracking-tight text-gray-900 sm:text-4xl dark:text-white">Sign
					up for our newsletter</h2>
				<p
					class="mx-auto mb-8 max-w-2xl  text-gray-500 md:mb-12 sm:text-xl dark:text-gray-400">Stay
					up to date with the roadmap progress, announcements and exclusive
					discounts feel free to sign up with your email.</p>
				<form action="#">
					<div
						class="items-center mx-auto mb-3 space-y-4 max-w-screen-sm sm:flex sm:space-y-0">
						<div class="relative w-full">
							<label for="email"
								class="hidden mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Email
								address</label>
							<div
								class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none">
								<svg class="w-4 h-4 text-gray-500 dark:text-gray-400"
									aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
									fill="currentColor" viewBox="0 0 20 16">
								<path
										d="m10.036 8.278 9.258-7.79A1.979 1.979 0 0 0 18 0H2A1.987 1.987 0 0 0 .641.541l9.395 7.737Z" />
								<path
										d="M11.241 9.817c-.36.275-.801.425-1.255.427-.428 0-.845-.138-1.187-.395L0 2.6V14a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V2.5l-8.759 7.317Z" />
							</svg>
							</div>
							<input
								class="block p-3 pl-9 w-full text-sm text-gray-900 bg-white rounded-lg border border-gray-300 sm:rounded-none sm:rounded-l-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
								placeholder="Enter your email" type="email" id="email"
								required="">
						</div>
						<div>
							<button type="submit"
								class="py-3 px-5 w-full text-sm font-medium text-center text-white rounded-lg border cursor-pointer bg-primary-700 border-primary-600 sm:rounded-none sm:rounded-r-lg hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Subscribe</button>
						</div>
					</div>
					<div
						class="mx-auto max-w-screen-sm text-sm text-left text-gray-500 newsletter-form-footer dark:text-gray-300">
						We care about the protection of your data. <a href="#"
							class="font-medium text-primary-600 dark:text-primary-500 hover:underline">Read
							our Privacy Policy</a>.
					</div>
				</form>
			</div>
		</div>
	</section>
</layout:layout>


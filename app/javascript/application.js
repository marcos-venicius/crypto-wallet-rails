// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const selectLanguageElement = document.getElementById('select-language')

selectLanguageElement.addEventListener('change', event => {
  const lang = event.target.options[event.target.selectedIndex].value

  const host = window.location.host
  const protocol = window.location.protocol
  const pathname = window.location.pathname
  const searchParams = window.location.search

  const params = new URLSearchParams(searchParams)

  params.delete('lang')
  params.append('lang', lang)

  const paramsString = params.toString();

  let url = `${protocol}//${host}${pathname}`

  if (paramsString.length > 0)
    url += `?${paramsString}`

  window.location.replace(url)
})

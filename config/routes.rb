# frozen_string_literal: true

Rails.application.routes.draw do
  root "external#home"

  scope module: :external do
    get :contact
    get :home
    get :publications
    get :services
    get :sitemap_xml, path: "sitemap.xml.gz"
    get :submit_contact, to: redirect("contact")
    get :thanks
    get :version
    post :submit_contact
  end
end

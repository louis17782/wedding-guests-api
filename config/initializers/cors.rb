Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:4321"  # tu frontend Astro

    resource "*",
      headers: :any,
      methods: [:get, :post, :options],
      credentials: false
  end
end

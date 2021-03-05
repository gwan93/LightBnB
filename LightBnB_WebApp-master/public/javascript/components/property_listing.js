$(() => {
  window.propertyListing = {};
  
  function createListing(property, isReservation) {
    return `
    <article class="property-listing">
        <section class="property-listing__preview-image">
          <img src="${property.thumbnail_photo_url}" alt="house">
        </section>
        <section class="property-listing__details">
          <h3 class="property-listing__title">${property.title}</h3>
          <ul class="property-listing__details">
            <li>number_of_bedrooms: ${property.number_of_bedrooms}</li>
            <li>number_of_bathrooms: ${property.number_of_bathrooms}</li>
            <li>parking_spaces: ${property.parking_spaces}</li>
          </ul>
          <form class="reservation-form" action="/api/reservations" method="POST">
            <input name="propertyId" type="hidden" value="${property.id}">
            <label for="reservation-start-date">Start date:</label>
            <input type="date" name="reservation_start_date" value="2021-03-04" min="2021-01-01" max="2022-12-31">
            <label for="reservation-end-date">End date:</label>
            <input type="date" name="reservation_end_date" value="2021-03-04" min="2021-01-01" max="2022-12-31">
            <button class="reservation-button" type="submit">Make Reservation</button>
          </form>
          ${isReservation ? 
            `<p>${moment(property.start_date).format('ll')} - ${moment(property.end_date).format('ll')}</p>` 
            : ``}
          <footer class="property-listing__footer">
            <div class="property-listing__rating">${Math.round(property.average_rating * 100) / 100}/5 stars</div>
            <div class="property-listing__price">$${property.cost_per_night/100.0}/night</div>
          </footer>
        </section>
      </article>
    `
  }

  window.propertyListing.createListing = createListing;

  $(document).on('submit', ".reservation-form", function (event) {
    event.preventDefault();
    views_manager.show('none');

    const data = $(this).serialize();
    submitReservation(data)
    .then(() => {
      views_manager.show('confirm', "Successfully reserved! You may view your new reservation under 'My Reservations'.");
      return;
    })
    .catch((error) => {
      console.error(error);
      views_manager.show('listings');
    })
  });

});
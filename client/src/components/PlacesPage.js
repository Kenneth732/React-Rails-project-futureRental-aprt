import React, { useEffect, useState } from "react";
import './PlacesPages.css'
function PlacePage(){
  const [apartments, setApartments] = useState([]);
  const [expandedImage, setExpandedImage] = useState(null);

  useEffect(() => {
    fetch('/apartments')
    .then((res) => res.json())
    .then((apartmentArray) => {
      setApartments(apartmentArray)
    });
  }, []);
  function handleImageClick(image) {
    if (expandedImage === image) {
      setExpandedImage(null); // Close the expanded image if it is already open
    } else {
      setExpandedImage(image); // Open the clicked image
    }
  }
  
  
  return (
    <div className="content">
      {apartments.map((apartment) => (
        <ul key={apartment.id} className="cards">
          <img
            src={apartment.image}
            onClick={() => handleImageClick(apartment.image)}
          />
          <p>{apartment.price}</p>
          <p>{apartment.rate}</p>
          <p>{apartment.category}</p>
        </ul>
      ))}
      {expandedImage && (
        <div className="expanded-image">
          <img src={expandedImage} />
          <button className="close-button" onClick={() => setExpandedImage(null)}>
            Close
          </button>
        </div>
      )}
    </div>
  );
  
}
export default PlacePage

// function PlacePage() {
//   // const [apartments, setApartments] = useState([]);
//   // const [expandedImage, setExpandedImage] = useState(null);

//   // ...
//   function handleImageClick(image) {
//     setExpandedImage(image);
//   }
//   return (
//     <div className="content">
//       {apartments.map((apartment) => (
//         <ul key={apartment.id} className="cards">
//           <img
//             src={apartment.image}
//             onClick={() => handleImageClick(apartment.image)}
//           />
//           <p>{apartment.price}</p>
//           <p>{apartment.rate}</p>
//           <p>{apartment.category}</p>
//         </ul>
//       ))}
//       {expandedImage && (
//         <div className="expanded-image">
//           <img src={expandedImage} onClick={() => setExpandedImage(null)} />
//         </div>
//       )}
//     </div>
//   );
  
  

// }

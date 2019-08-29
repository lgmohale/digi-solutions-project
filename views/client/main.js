function add(){
    var formData = new FormData(document.querySelector('form'))

    const options = {
        method: 'POST',
        body: JSON.stringify(formData),
        headers: {
            'Content-Type': 'application/json'
        }
    };

    fetch('http://localhost:4000/unicersities/add', options)
    .then(res => res.json())
    .then(res => console.log(res));
};
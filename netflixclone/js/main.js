const tabItems = document.querySelectorAll('.tab-item');
const tabContentItems = document.querySelectorAll('.tab-content-item');

tabItems.forEach(item => item.addEventListener('click', evntSelectItem));

function evntSelectItem(e) {
    remove();
    //Add border to corrent tab
    this.classList.add('tab-border');
    document.querySelector(`#${this.id}-content`).classList.add('show');
}

function remove() {
    tabItems.forEach(item => item.classList.remove('tab-border'));
    tabContentItems.forEach(item => item.classList.remove('show'));
}

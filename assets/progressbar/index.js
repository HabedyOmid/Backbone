const FRreadingProgress = target => {

    const winTop = window.pageYOffset || document.documentElement.scrollTop;
    const targetBottom = target.offsetTop + target.scrollHeight;
    const windowBottom = winTop + window.outerHeight;
    const progress = 100 - (((targetBottom - windowBottom + window.outerHeight / 3) / (targetBottom - window.outerHeight + window.outerHeight / 3)) * 100);

    document.querySelector('#gs-progress-bar').style.width = progress + '%';

    (progress > 100) ? document.querySelector('#gs-progress-container').classList.add('ready') : document.querySelector('#gs-progress-container').classList.remove('ready');
};

document.addEventListener('DOMContentLoaded', () => {
    const content = document.querySelector('.entry-content');
    let greenshiftprogress = document.createElement('div');
    greenshiftprogress.id = "gs-progress-container";
    greenshiftprogress.insertAdjacentHTML('beforeend', '<div id="gs-progress-bar"><style scoped>#gs-progress-container{position:fixed;width:100%;height:4px;left:0;top:0;z-index:1000000;background:0 0;}#gs-progress-container.ready{transform:translateY(-3px)}#gs-progress-bar{display:block;width:0;height:3px;background:var(--wp--preset--color--primary)}</style></div>');
    document.body.appendChild(greenshiftprogress);

    FRreadingProgress(content);
    window.addEventListener('scroll', () => {
        FRreadingProgress(content);
    });
 });
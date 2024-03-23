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
    FRreadingProgress(content);
    window.addEventListener('scroll', () => {
        FRreadingProgress(content);
    });
 });
from django.shortcuts import render

def app2_page(request):
    return render(request, 'app2/app2_page.html')

from bs4 import BeautifulSoup

with open(r'E:\Ai-project\site\index.html', 'r', encoding='utf-8') as f:
    html = f.read()

soup = BeautifulSoup(html, 'html.parser')
pretty = soup.prettify()

with open(r'E:\Ai-project\site\index.html', 'w', encoding='utf-8') as f:
    f.write(pretty)

print(f'Formatted: {len(pretty)} chars')
print(f'Lines: {pretty.count(chr(10))}')

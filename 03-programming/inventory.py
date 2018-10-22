#!/usr/bin/env python
import argparse

def parse_args():
	parser = argparse.ArgumentParser(description='My Inventory')
	group = parser.add_mutually_exclusive_group(required=True)
	group.add_argument('--list', action='store_true', help='List active servers')
	group.add_argument('--host', help='List details about the specific host')
	return parser.parse_args()

def main():
	args = parse_args()
	if args.list:
		output = (
			'{"nodes": {'
			'"hosts": ['
				'"node1","node2","node3"'
			'] } }')
	elif args.host:
		output = '{"key": "val"}'
	print(output)

if __name__ == '__main__':
	main()